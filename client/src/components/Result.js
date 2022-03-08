import React from 'react';

import Layout from './Layout';
import { useState } from 'react';
import styles from '../resources/Results.module.css';
function Result() {
    const [result, setResult] = useState('0%');
    return (
        <Layout>
            <div className={styles.content}>
                <div className={styles['col-left']}>
                    <p className={styles.maintext}>Your<br />Results</p>
                </div>
                <div className={styles['col-right']}>
                    <div className={styles['col-right-content']}>
                        <p className={styles.subtext}>
                        The system predicted<br />
                        <p className={styles.maintext}>{result}</p><br />
                        chance you have acne.<br /><br />
                        Please click <a href='#'><b>here</b></a> for
                        more info on acne
                        and its treatments.
                    </p>
                </div>
            </div>
        </div>
        </Layout >

    )
}
export default Result;