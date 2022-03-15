import React, { useState } from 'react';
import Layout from './Layout';
import { useLocation, Navigate } from 'react-router-dom';
import styles from '../resources/Results.module.css';
import Constants from '../utility/Constants';

function Result() {
    const location = useLocation();
    let predConfidence = "0%";
    let predClass = "null";
    let userName = "";

    if (location.state && location.state.resultData && Constants.LOGIN_INFO.loggedIN) {
        console.log("Result Data: ", location.state.resultData);
        userName = location.state.userName;
        analyzeResults(location.state.resultData);
    } else {
        alert(Constants.DEFAULT_ERROR_MESSAGE);
        return <Navigate to={Constants.MAIN_PAGE} />
    }
    function analyzeResults(data) {
        console.log("Analyzing Results")
        if (data.status === 'OK') {
            predClass = data.predClass;
            predConfidence = data.confidence;
        } else {
            alert(`The test result was inconclusive`);
        }
    }

    return (
        <Layout isHome={false} userName={userName}>
            <div className={styles.content}>
                <div className={styles['col-left']}>
                    <p className={styles.maintext}>Your<br />Results</p>
                </div>
                <div className={styles['col-right']}>
                    <div className={styles['col-right-content']}>
                        <div className={styles.subtext}>
                            <p>The system predicted</p>
                            <p className={styles.maintext}>{predConfidence}%</p>
                            <p>{Constants.PREDICTION_MESSAGE[predClass]}</p>
                        </div>
                        <div>{predClass === Constants.PREDICTIONS[0] ?
                            <div>Please click <a href={Constants.MORE_INFO_LINK}><b>here</b></a> for
                                more info on acne
                                and its treatments.
                            </div>
                            : <div></div>}
                        </div>
                    </div>
                </div>
            </div>
        </Layout >
    );
}
export default Result;