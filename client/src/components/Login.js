import React, { useRef, useState } from 'react';
import { Container, TextField, Typography } from '@mui/material';
import LoadingButton from '@mui/lab/LoadingButton';
import { Link, useNavigate } from 'react-router-dom';
import styles from '../resources/FormStyles.module.css';
import { validateForm } from '../utility/FormValidation';
import Constants from "../utility/Constants"
import { makeRequest } from '../utility/ServerUtil';

function Login() {
    //References to HTML Elements
    const emailRef = useRef();
    const passwordRef = useRef();
    const navigate = useNavigate();

    //Use States
    const [errors, setErrors] = useState(Constants.LOGIN_FORM_ERRORS);
    const [helperTexts, setHelperTexts] = useState(Constants.LOGIN_FORM_HELPER_TEXTS);
    const [loading, setLoading] = useState(false);

    //Function to handle for submission
    const handleSubmit = (event) => {
        event.preventDefault();
        setLoading(true);
        setErrors(Constants.LOGIN_FORM_ERRORS);
        setHelperTexts(Constants.LOGIN_FORM_HELPER_TEXTS);

        const formData = { email: emailRef.current.value, password: passwordRef.current.value };
        const validationStatus = validateForm(formData, Constants.FORM_TYPE.login);
        setLoading(false);
        setErrors(validationStatus.errors);
        setHelperTexts(validationStatus.helperTexts);

        if (validationStatus.canSubmit) {
            setLoading(true);
            makeRequest(Constants.LOGIN_API, formData, Constants.SERVER_CALL_TYPE.post)
                .then((response) => {
                    setLoading(false);
                    if (!response || response.data.statusCode === Constants.STATUS_CODE_ERROR) {
                        console.log("Error Encountered");
                        alert(Constants.DEFAULT_ERROR_MESSAGE);
                        return;
                    }
                    const shouldLogin = response.data.loginResponse.shouldLogin;
                    const emailErrorMsg = response.data.loginResponse.emailErrorMsg;
                    const passwordErrorMsg = response.data.loginResponse.passwordErrorMsg;
                    console.log("Login Response: ", response.data);
                    if (shouldLogin) {
                        navigate(
                            Constants.MAIN_PAGE,
                            {state:{
                                shouldLogin: shouldLogin,
                                userInfo: response.data.loginInfo,
                            }}
                            );
                    } else {
                        console.log("Email Error: ", emailErrorMsg, "Password Error:", passwordErrorMsg);
                        setHelperTexts({
                            email: emailErrorMsg,
                            password: passwordErrorMsg,
                        });
                        setErrors({
                            email: !(emailErrorMsg == "") ? true : false,
                            password: !(passwordErrorMsg == "") ? true : false,
                        });
                    }
                })
                .catch(_ => {
                    setLoading(false);
                    console.log("Axios Caught Error");
                    alert(Constants.DEFAULT_ERROR_MESSAGE);
                });
        }
    }
    //Login Module
    return (
        <Container maxWidth='xs' className={styles.container}>
            <div>
                <Typography className={styles.headertext} variant='h5'>
                    Welcome</Typography>
                <Typography className={styles.smalltext} variant='subtitle1'>
                    Please enter your login email and password</Typography>
            </div>
            <form autoComplete='off'
                noValidate
                onSubmit={handleSubmit}>
                <div>
                    <TextField
                        inputRef={emailRef}
                        id='email'
                        type='email'
                        variant='outlined'
                        placeholder='user@example.com'
                        label='Email'
                        error={errors.email}
                        helperText={helperTexts.email}
                        fullWidth />
                    <TextField
                        inputRef={passwordRef}
                        id='password'
                        type='password'
                        variant='outlined'
                        label='Password'
                        error={errors.password}
                        helperText={helperTexts.password}
                        fullWidth />
                </div>
                <div className={styles.smalltext}>Forgot password?</div>
                <LoadingButton
                    className={styles.submitButton}
                    loading={loading}
                    variant='outlined'
                    type='submit'
                >Login</LoadingButton>
            </form>
            <div>
                <Typography variant='subtitle1' className={styles.smalltext}>Don't have an account? <Link to='/register'><b>Sign Up</b></Link></Typography>
            </div>
        </Container>
    );
}
export default Login;