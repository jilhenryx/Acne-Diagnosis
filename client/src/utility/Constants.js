const WEB_API_HOST = "http://localhost:4000/api";

export default class Constants {
    static REG_FORM_ERRORS = {
        firstname: false,
        lastname: false,
        email: false,
        password: false,
        confirmPassword: false,
        isChecked: false,
    };
    static REG_FORM_HELPER_TEXTS = {
        firstname: "",
        lastname: "",
        email: "",
        password: "",
        confirmPassword: "",
        isChecked: ""
    };
    static LOGIN_FORM_ERRORS = {
        email: false,
        password: false,
    };
    static LOGIN_FORM_HELPER_TEXTS = {
        email: "",
        password: "",
    };

    static FORM_TYPE = {
        login: 1,
        register: 2
    }

    //Server Requests Type
    static SERVER_CALL_TYPE = {
        get: 1,
        post: 2
    }
    //API Endpoints
    static REGISTER_API = WEB_API_HOST + "/register";
    static LOGIN_API = WEB_API_HOST + "/login";
    static MODEL_PREDICT_API = WEB_API_HOST + "/predict";

    //Server Requests Status Codes
    static STATUS_CODE_SUCCESS = 200;
    static STATUS_CODE_ERROR = 404;
    static STATUS_CODE_INTERNAL = 101;

    //Error Messages
    static DEFAULT_ERROR_MESSAGE = "Something went wrong! Please try again later";
    static REG_FORM_ERROR_MESSAGE = "Error Saving Form. Please try again later";
    static FORM_SUCCESS_MESSAGE = "Registration Successful";

    //APP Endpoints
    static LOGIN_PAGE = '/';
    static REGISTER_PAGE = '/register';
    static MAIN_PAGE = '/main';
    static RESULT_PAGE = '/result';

    //Elements Styling
    static TEXTFIELD_HEIGHT = '1.4em';

    //External Web Links
    static MORE_INFO_LINK = 'https://www.mayoclinic.org/diseases-conditions/acne/symptoms-causes/syc-20368047#:~:text=Acne%20is%20a%20skin%20condition,affects%20people%20of%20all%20ages.';

    //Predictions
    static PREDICTIONS = ['acne','not-acne']

    static LOGIN_INFO = {
        loggedIN: false,
        userData: {},
    }
}
