/*
Handles all database requests
*/
const bcrypt = require('bcrypt');
const Constants = require('./Constants');
const mysql = require('mysql');

//SaltRounds for Bcrypt Hash Fuc
const saltRounds = 10;
const db = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "acne_diagnosis"

});
//Register Endpoint
async function handleUserRegistration(req, res) {
    console.log("Register API")
    const firstName = req.body.firstname;
    const lastName = req.body.lastname;
    const email = req.body.email;
    const password = req.body.password;

    const sqlInsert = `INSERT INTO users 
        (first_name, last_name, email, password)
        VALUES (?,?,?,?)`;
    const sqlGetEmail = 'SELECT * FROM users WHERE email = ?';

    await Constants.sleep(2000);
    db.query(
        sqlGetEmail,
        [email],
        (err, result) => {
            if (err || !result || result.length > 0) {
                res.send({ statusCode: Constants.ERROR_CODE, message: Constants.REG_FORM_DUPLICATE_EMAIL_MESSAGE })
            }
            else {
                bcrypt.hash(password, saltRounds, (err, hash) => {
                    if (!hash || err) {
                        res.send({ statusCode: Constants.ERROR_CODE, message: Constants.DEFAULT_ERROR_MESSAGE });
                        return
                    }
                    db.query(
                        sqlInsert,
                        [firstName, lastName, email, hash],
                        (err, result) => {
                            if (err) {
                                console.log("SQL Insert Error: " + err);
                                res.send({ statusCode: Constants.ERROR_CODE, message: Constants.REG_FORM_ERROR_MESSAGE });
                                return
                            }
                            console.log("SQL Insert Result:");
                            console.log(result);
                            res.send({ statusCode: Constants.SUCCESS_CODE, message: Constants.REG_FORM_SUCCESS_MESSAGE });

                        });
                });
            }

        });
}

async function handleUserLogin(req, res) {
    console.log("Login API")

    const response = {
        emailErrorMsg: "",
        passwordErrorMsg: "",
        shouldLogin: false,
    };
    const email = req.body.email;
    const password = req.body.password;

    const sqlQueryEmail = "SELECT first_name, last_name, email, password FROM users WHERE email = ?";

    await Constants.sleep(2000);
    db.query(
        sqlQueryEmail,
        [email],
        (err, result) => {
            if (err || !result) {
                console.log("SQL QUERY ERROR");
                res.send({ statusCode: Constants.ERROR_CODE, message: Constants.DEFAULT_ERROR_MESSAGE });
            }
            else {
                if (result.length < 1) {
                    console.log("Email is Invalid");
                    response.emailErrorMsg = Constants.LOGIN_FORM_INVALID_EMAIL_MESSAGE;
                    response.shouldLogin = false;
                    res.send({ statusCode: Constants.SUCCESS_CODE, loginResponse: response });

                }
                else {
                    userInfo = result[0]
                    hashed_password = userInfo.password;
                    delete userInfo.password;
                    bcrypt.compare(password, hashed_password, (err, bcryptRes) => {
                        if (err) {
                            console.log("Bcrypt Error: ", err);
                            res.send({ statusCode: Constants.ERROR_CODE, message: Constants.DEFAULT_ERROR_MESSAGE });
                            return;
                        }
                        if (bcryptRes) {
                            console.log("Bcrypt Response: ", bcryptRes);
                            response.shouldLogin = true;
                            res.send({ statusCode: Constants.SUCCESS_CODE, loginResponse: response, loginInfo: userInfo });

                        }
                        else {
                            console.log("No Bcrypt Response: ", bcryptRes);
                            response.shouldLogin = false;
                            response.passwordErrorMsg = Constants.LOGIN_FORM_INVALID_PASSWORD_MESSAGE;
                            res.send({ statusCode: Constants.SUCCESS_CODE, loginResponse: response });

                        }
                    });
                }
            }

        });
}

module.exports = { handleUserRegistration, handleUserLogin }