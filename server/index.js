const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const Constants = require('./Constants');
const DBUtil = require('./DBUtil');
const ModelUtil = require('./ModelUtil');
const multer = require('multer');


const app = express();

const fileStore = multer.diskStorage({
    destination: function (_, _, cb) {
        cb(null, './tmp/uploads');
    },
    filename: function (_, file, cb) {
        //const uniqueSuffix = Date.now() + '.png';
        cb(null, file.originalname);
    }
})
const fileUpload = multer({ storage: fileStore }).array('files');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.json());
//app.use(upload.array()); 
//app.use(express.static('public'));
app.use(cors());


//Register Endpoint
app.post(Constants.REGISTER_ENDPOINT,
    (req, res) => {
        DBUtil.handleUserRegistration(req, res);
    });

//Login Endpoint
app.post(Constants.LOGIN_ENDPOINT,
    (req, res) => {
        DBUtil.handleUserLogin(req, res);
    });

//Predict Endpoint
app.post(Constants.PREDICT_ENDPOINT,
    (req, res) => {
        fileUpload(req, res, (err => {
            if (err) {
                console.log("Multer Error: ", err)
                res.send({ statusCode: Constants.ERROR_CODE, modelResponse: error.message});
            }
            ModelUtil.getPredictions(req, res)
        }));
    });

app.listen(4000, () => {
    console.log("Listening @port:4000")
});