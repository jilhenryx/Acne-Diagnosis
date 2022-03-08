import { validEmail } from './Regex'
import Constants from './Constants'
/*
*Function to Handle Form Submission
*PARAMETERS
    values: an object containing form data to be validated
    formType: integer code for type of form

*OUTPUT
    validationInfo: an object containing information about validation process
*/

export function validateForm(values, formType) {
    var canSubmit = true;
    const validationInfo = {
        errors: {},
        helperTexts: {}
    };
    const isRegForm =  formType === Constants.FORM_TYPE.register;
    validationInfo.errors =
        isRegForm ? { ...Constants.REG_FORM_ERRORS } : { ...Constants.LOGIN_FORM_ERRORS };
    validationInfo.helperTexts =
        isRegForm ? { ...Constants.REG_FORM_HELPER_TEXTS } : { ...Constants.LOGIN_FORM_HELPER_TEXTS };


    const email = values.email ? values.email : '';
    const password = values.password ? values.password : '';

    if (email === '' || !validEmail.test(email)) {
        validationInfo.helperTexts.email = 'Invalid Email';
        validationInfo.errors.email = true;
        canSubmit = false;
    }
    if (password === '' || password.length < 8) {
        validationInfo.helperTexts.password = 'Password must be 8 or more characters';
        validationInfo.errors.password = true;
        canSubmit = false;
    }
    if (isRegForm) {
        const firstName = values.firstname ? values.firstname : '';
        const lastName = values.lastname ? values.lastname : '';
        const confirmPassword = values.confirmPassword ? values.confirmPassword : '';
        const isChecked = values.isChecked ? values.isChecked : false;

        if (firstName === '') {
            validationInfo.helperTexts.firstname = 'First Name is required';
            validationInfo.errors.firstname = true;
            canSubmit = false;
        }
        if (lastName === '') {
            validationInfo.helperTexts.lastname = 'Last Name is required';
            validationInfo.errors.lastname = true;
            canSubmit = false;
        }
        if (!(confirmPassword === password)) {
            validationInfo.helperTexts.confirmPassword = 'Passwords doesn\'t match';
            validationInfo.errors.confirmPassword = true;
            canSubmit = false;
        }
        if (!isChecked) {
            validationInfo.helperTexts.isChecked = "You must accept the Terms & Conditions";
            canSubmit = false;
        }
        validationInfo.errors.isChecked = isChecked;
    }

    validationInfo.canSubmit = canSubmit;
    return validationInfo;
}//end of function