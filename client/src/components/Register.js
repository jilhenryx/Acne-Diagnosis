import React, { useRef, useState, } from 'react';
import { Container, Typography, TextField, Grid, Checkbox, InputAdornment, IconButton } from "@mui/material";
import {LoadingButton} from '@mui/lab'
import { Visibility, VisibilityOff } from '@mui/icons-material';
import { Link, useNavigate } from 'react-router-dom';
import styles from '../resources/FormStyles.module.css';
import { validateForm } from '../utility/FormValidation';
import Constants from "../utility/Constants"
import { makeRequest } from '../utility/ServerUtil';

function Register() {
    const TEXTFIELD_HEIGHT = Constants.TEXTFIELD_HEIGHT;
    const navigate = useNavigate();
    //Form Refs
    const fNameRef = useRef();
    const lNameRef = useRef();
    const emailRef = useRef();
    const passwordRef = useRef();
    const cPasswordRef = useRef();

    //Use States
    const [errors, setErrors] = useState(Constants.REG_FORM_ERRORS);
    const [helperTexts, setHelperTexts] = useState(Constants.REG_FORM_HELPER_TEXTS);
    const [checked, setChecked] = useState(false);
    const [showPassword, setShowPassword] = useState(false);
    const [loading, setLoading] = useState(false);

    //Handle Showing Passwords
    const handleClickShowPassword = () => setShowPassword(!showPassword);

    //Handle Checkbox Clicks
    const handleCheckbox = (event) => {
        setChecked(event.target.checked);
    }

    const handleSubmit = (event) => {
        event.preventDefault();

        setLoading(true);
        setErrors(Constants.FORM_ERRORS);
        setHelperTexts(Constants.FORM_HELPER_TEXTS);

        const firstName = fNameRef.current.value;
        const lastName = lNameRef.current.value;
        const email = emailRef.current.value;
        const password = passwordRef.current.value;
        const confirmPassword = cPasswordRef.current.value;

        const formData = {
            firstname: firstName,
            lastname: lastName,
            email: email,
            password: password,
            confirmPassword: confirmPassword,
            isChecked: checked,
        }

        const validationStatus = validateForm(formData, Constants.FORM_TYPE.register);

        setLoading(false);
        setErrors(validationStatus.errors);
        setHelperTexts(validationStatus.helperTexts);

        if (!validationStatus.errors.isChecked)
            alert(validationStatus.helperTexts.isChecked);

        if (validationStatus.canSubmit) {
            setLoading(true);
            const data = {
                firstname: firstName,
                lastname: lastName,
                email: email,
                password: password,
            }
            makeRequest(Constants.REGISTER_API, data, Constants.SERVER_CALL_TYPE.post)
                .then((response) => {
                    setLoading(false);
                    console.log("Server Response: " + response);
                    if (response.status === Constants.STATUS_CODE_SUCCESS) {
                        console.log(response.data)
                        if (response.data.statusCode === Constants.STATUS_CODE_SUCCESS) {
                            console.log("Registraion Response Success");
                            alert(response.data.message);
                            navigate(Constants.LOGIN_PAGE);
                        }
                        else if (response.data.statusCode === Constants.STATUS_CODE_ERROR) {
                            console.log("Registration Response Error");
                            alert(response.data.message);
                        }
                    }
                    else {
                        console.log("Registration Response Error");
                        alert(Constants.REG_FORM_ERROR_MESSAGE);
                    }
                })
                .catch((error) => {
                    setLoading(false);
                    alert(Constants.DEFAULT_ERROR_MESSAGE);
                });
        }
    }

    return (
        <Container maxWidth='xs' className={styles.container}>
            <div className={styles.heading}>
                <Typography variant='h5' className={styles.headertext}>Sign Up</Typography>
                <Typography variant='subtitle1' className={styles.smalltext}>Please fill to create a new account</Typography>
            </div>
            <form autoComplete='off'
                noValidate
                onSubmit={handleSubmit}>
                <Grid
                    container
                    rowSpacing={0}
                    className={styles.namerow}
                    columnSpacing={0.5}
                    direction="row"
                    justifyContent="space-around"
                    alignItems="center"
                >
                    <Grid item xs={6}>
                        <TextField
                            sx={{ m: "2rem" }}
                            label='First Name'
                            placeholder='Ann'
                            variant='outlined'
                            error={errors.firstname}
                            helperText={helperTexts.firstname}
                            inputRef={fNameRef}
                            InputProps={{
                                style: {
                                    height: { TEXTFIELD_HEIGHT },
                                }
                            }}
                        />
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            type='text'
                            variant='outlined'
                            placeholder='Harrison'
                            label='Last Name'
                            error={errors.lastname}
                            helperText={helperTexts.lastname}
                            inputRef={lNameRef}
                            InputProps={{
                                style: {
                                    height: { TEXTFIELD_HEIGHT },
                                }
                            }}
                        />
                    </Grid>
                    <Grid item xs={12}>
                        <TextField
                            type='email'
                            variant='outlined'
                            placeholder='user@example.com'
                            label='Email'
                            fullWidth
                            error={errors.email}
                            helperText={helperTexts.email}
                            inputRef={emailRef}
                            InputProps={{
                                style: {
                                    height: { TEXTFIELD_HEIGHT },
                                }
                            }}
                        />
                    </Grid>
                    <Grid item xs={12}>
                        <TextField
                            type='password'
                            variant='outlined'
                            label='Password'
                            fullWidth
                            error={errors.password}
                            helperText={helperTexts.password}
                            inputRef={passwordRef}
                            InputProps={{
                                style: {
                                    height: { TEXTFIELD_HEIGHT },
                                },
                                endAdornment: (
                                    <InputAdornment position="end">
                                        <IconButton
                                            aria-label="toggle password visibility"
                                            onClick={handleClickShowPassword}
                                        //onMouseDown={handleMouseDownPassword}
                                        >
                                            {showPassword ? <Visibility /> : <VisibilityOff />}
                                        </IconButton>
                                    </InputAdornment>
                                )
                            }}
                        />
                    </Grid>
                    <Grid item xs={12}>
                        <TextField
                            type='password'
                            variant='outlined'
                            label='Confirm Password'
                            fullWidth
                            error={errors.confirmPassword}
                            helperText={helperTexts.confirmPassword}
                            inputRef={cPasswordRef}
                            InputProps={{
                                style: {
                                    height: { TEXTFIELD_HEIGHT },
                                }
                            }}
                        />
                    </Grid>
                </Grid>
                <div className={styles.row}>
                    <Checkbox
                        sx={{
                            color: '#2139cd',
                            '&.Mui-checked': {
                                color: 'primary',
                            },
                        }}
                        onChange={handleCheckbox}
                    />
                    <div>I accept the <b>Terms of Use &amp; Privacy Policy</b></div>
                </div>
                <LoadingButton
                    className={styles.submitButton}
                    loading={loading}
                    variant='outlined'
                    type='submit'
                >Register</LoadingButton>
            </form>
            <div>
                <Typography variant='subtitle1' className={styles.smalltext}>Already have an account? <Link to='/'><b>Login</b></Link></Typography>
            </div>
        </Container>

    )
}
export default Register;