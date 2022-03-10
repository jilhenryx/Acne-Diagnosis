import React from 'react';
import { Container } from '@mui/material';
import styles from '../resources/Layout.module.css';
import Navigation from './Navigation';


function Layout(props) {
    return (
        <Navigation isHome={props.isHome} userName={props.userName}>
            <div className={styles.containerDiv}>
                <Container maxWidth='xs' className={styles.container}
                    style={{
                            display: 'flex'
                        
                    }}
                >
                    {props.children}
                </Container>
            </div>
        </Navigation>

    );
}
export default Layout;