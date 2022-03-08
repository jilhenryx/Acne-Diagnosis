import React from 'react';
import { Container } from '@mui/material';
import styles from '../resources/Layout.module.css';
import Navigation from './Navigation';


function Layout(props) {
    return (
        <Navigation isHome={props.isHome} userName={props.userName}>
            <Container maxWidth='xs' className={styles.container}>
                {props.children}
            </Container>
        </Navigation>

    );
}
export default Layout;