/*
Handles all requests to the ViT Model Server
*/
const axios = require('axios');
const FormData = require('form-data');
const fs = require('fs');
const Constants = require('./Constants');

async function getPredictions(req, res) {
    let files = req.files;
    if (!files){
        res.send({ statusCode: Constants.ERROR_CODE, modelResponse: Constants.DEFAULT_ERROR_MESSAGE});
    }

    console.log(`Number of Files: ${files.length}`);
    //res.send(`File[0]: ${JSON.stringify(files[0].path)}`)
    //res.send(`FileStream: ${JSON.stringify(fs.createReadStream(files[0].path))}`)
    var formData = new FormData();
    //var fileStreams = {};
    for (let index in files) {
        let fileStream = fs.createReadStream(files[index].path);
        formData.append('files', fileStream);
    }

    //formData.append('files',fileStreams);

    var request = {
        method: 'post',
        url: Constants.MODEL_PREDICTION_ENDPOINT,
        headers: {
            ...formData.getHeaders()
        },
        data: formData
    };

    axios(request)
        .then(function (response) {
            console.log("Model Response: ", JSON.stringify(response.data));
            res.send({ statusCode: Constants.SUCCESS_CODE, modelResponse: response.data })
        })
        .catch(function (error) {
            console.log("Model Error: ", error.message);
            res.send({ statusCode: Constants.ERROR_CODE, modelResponse: error.message })
        });
}

module.exports = { getPredictions };