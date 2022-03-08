const API_ROOT = "/api/";

module.exports = class Constants{
    static REGISTER_ENDPOINT = API_ROOT + "register";
    static LOGIN_ENDPOINT = API_ROOT + "login";

    //Error Messages
    static DEFAULT_ERROR_MESSAGE = "Something went wrong! Please try again later";
    static REG_FORM_ERROR_MESSAGE = "Error Saving Form. Please try again later";
    static REG_FORM_SUCCESS_MESSAGE = "Registration Successful";
    static REG_FORM_DUPLICATE_EMAIL_MESSAGE ="Email Already Exist. Login Instead" ;
    static LOGIN_FORM_INVALID_EMAIL_MESSAGE ="The email entered is NOT correct"  ;
    static LOGIN_FORM_INVALID_PASSWORD_MESSAGE ="The password entered is NOT correct" ;
}

