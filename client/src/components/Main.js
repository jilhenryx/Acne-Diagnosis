import React, { useState } from 'react';
import { Typography, LinearProgress } from '@mui/material';
import { useDropzone } from 'react-dropzone';
import { useNavigate, useLocation, Navigate } from 'react-router-dom';
import styles from '../resources/Main.module.css';
import Layout from './Layout';
import { Container } from '../resources/styledComponents';
import Constants from '../utility/Constants';
import { makeRequest } from '../utility/ServerUtil'
import axios from 'axios';
function Main() {
    const navigate = useNavigate();
    const location = useLocation();
    const [loading, setLoading] = useState(false);
    const [statusMsg, setStatusMsg] = useState('Uploading File');
    const [selectedFiles, setSelectedFiles] = useState();
    let userName = "";
    //const [files, setFiles] = useState([]);
    //Check if user has logged in else redirect to login
    if (location.state && location.state.shouldLogin) {
        //console.log("Loc State: ", location.state);
        userName = location.state.userInfo.first_name + " " + location.state.userInfo.last_name;
    } else {
        console.log("User is not authenticated");
        return <Navigate to={Constants.LOGIN_PAGE} />
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
                    uploadFiles(acceptedFiles);
                }
                else if (fileRejections) {
                    alert("Uploaded Invalid Files");
                }
            }
        })

    // useEffect(files => {
    //     if (!files) {
    //         alert(Constants.DEFAULT_ERROR_MESSAGE);
    //         return;
    //     }
    //     uploadFiles(files);

    // }, [selectedFiles]);

    const uploadFiles = (files) => {
        if (files.length < 1) {
            alert("Please Upload .PNG or .JPG Images");
            return;
        }
        console.log("Sending: ", files);
        setLoading(true);
        const formData = new FormData()
        formData.append('files', files);
        axios({
            method: "post",
            url: Constants.MODEL_PREDICT_API,
            data: files,
        })
            .then(response => {
                console.log("Model Response: ", response);
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