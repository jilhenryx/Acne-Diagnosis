import Axios from 'axios'
import Constants from './Constants'

export function makeRequest(server_url = '', data = {}, serverCallType) {
    if (!(server_url === '') && data) {
        switch (serverCallType) {
            case Constants.SERVER_CALL_TYPE.get:
                return getRequest(server_url, data);
            case Constants.SERVER_CALL_TYPE.post:
                return postRequest(server_url, data);
            default: return;
        }
    }
}

export const getFormData = (files) => {
    console.log("Sending: ", files);
    const formData = new FormData()
    //formData.append('files', files);
    for(let index in files){
        formData.append('files', files[index]);
    }
    return formData;
}

function getRequest(url, data) {
    //TODO: Implement Get
}
async function postRequest(url, data) {
    console.log('Post Request Called')
    return await Axios.post(url, data);
}