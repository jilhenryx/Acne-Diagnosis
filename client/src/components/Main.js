import React, { useState, useEffect } from 'react';
import { Typography, LinearProgress } from '@mui/material';
import { useDropzone } from 'react-dropzone';
import { useNavigate, Navigate } from 'react-router-dom';
import styles from '../resources/Main.module.css';
import Layout from './Layout';
import { Container } from '../resources/styledComponents';
import Constants from '../utility/Constants';
import { makeRequest, getFormData } from '../utility/ServerUtil'
function Main() {
    const navigate = useNavigate();
    const [loading, setLoading] = useState(false);
    const [statusMsg, setStatusMsg] = useState('Uploading File');
    const [selectedFiles, setSelectedFiles] = useState();
    let userName = "";
    //const [files, setFiles] = useState([]);
    //Check if user has logged in else redirect to login
    if (Constants.LOGIN_INFO.loggedIN) {
        console.log("User Logged In");
        userName = Constants.LOGIN_INFO.userData.first_name + " " + Constants.LOGIN_INFO.userData.last_name;
    } else {
        console.log("User is not authenticated");
        return <Navigate to={Constants.LOGIN_PAGE} />
    }

    const sleep = (delay) => {
        return new Promise(res => setTimeout(res, delay));
    }

    //Initializing DropZone
    const { getRootProps, getInputProps, isDragAccept, isDragReject, }
        = useDropzone({
            accept: ["image/png", "image/jpeg"],
            onDrop: (acceptedFiles, fileRejections) => {
                if (acceptedFiles) {
                    // acceptedFiles.map(file =>
                    //     Object.assign(file, { preview: URL.createObjectURL(file) })
                    // )
                    const filesObject = Object.assign({}, acceptedFiles);
                    console.log("Object Files:", filesObject);
                    setSelectedFiles(filesObject);
                }
                else if (fileRejections) {
                    alert("Uploaded Invalid Files");
                }
            }
        })
    //Use Effect to Listen for Upload of Files
    useEffect(() => {
        if (!selectedFiles || selectedFiles.length < 1) {
            console.log("UseEffect(): No files")
            //alert("Please Upload .PNG or .JPG Images");
            return;
        }
        console.log("UseEffect(): Selected Files Changed");
        uploadSelectedFiles(selectedFiles);
    }, [selectedFiles]);

    const uploadSelectedFiles = (files) => {
        // axios({
        //     method: "post",
        //     url: Constants.MODEL_PREDICT_API,
        //     data: files,
        // })
        setLoading(true);
        const formData = getFormData(files);
        console.log("Uploading Files");
        makeRequest(Constants.MODEL_PREDICT_API, formData, Constants.SERVER_CALL_TYPE.post)
            .then(async response => {
                setStatusMsg("Predicting");
                await sleep(3000);
                const resData = response.data;
                console.log("Model Response: ", resData);
                if (resData.statusCode === Constants.STATUS_CODE_SUCCESS) {
                    navigate(Constants.RESULT_PAGE,
                        {
                            state: {
                                resultData: resData.modelResponse,
                                userName: userName,
                            }
                        })
                }
                else {
                    setLoading(false);
                    if (resData.statusCode === Constants.STATUS_CODE_ERROR) {
                        alert(resData.modelResponse);
                    }
                    else {
                        alert(Constants.DEFAULT_ERROR_MESSAGE);
                    }
                }
            })
            .catch(_ => {
                setLoading(false);
                alert(Constants.DEFAULT_ERROR_MESSAGE);
            });
    }

    return (
        <Layout isHome={true} userName={userName}>{
            loading ?
                <div className={styles["modal-loading"]}>
                    <div><p className={styles.maintext}>{statusMsg}</p></div>
                    <div>
                        <LinearProgress
                            variant='indeterminate'
                            color='secondary'
                            sx={{
                                height: 10,
                                borderRadius: 1,
                                backgroundColor: '#243456'
                            }}
                        />
                    </div>
                </div> :
                <div className={styles.modal}>
                    <div className={styles.heading}>
                        <Typography variant='h6'>Upload Images</Typography>
                        <Typography variant='subtitle2'>
                            For a better prediction please upload multiple images
                        </Typography>
                    </div>
                    <div className={styles['file-upload-container']}>
                        <Container {...getRootProps({ isDragAccept, isDragReject })}>
                            <input {...getInputProps()} />
                            <div className={styles['file-upload-caption']}>
                                <Typography variant='p'>
                                    {isDragReject ? "Invalid File Format. PNG or JPG Images Only" : "Drag and Drop Images or click to browse device"}
                                </Typography>
                            </div>
                        </Container>
                    </div>
                    <div className={styles.footer}>
                        <Typography variant='subtitle2'>
                            Only .png and .jpg images are allowed
                        </Typography>
                    </div>
                </div>}
        </Layout>
    );
}
export default Main;