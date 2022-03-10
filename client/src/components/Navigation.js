import React from 'react';
import classes from '../resources/Navigation.module.css'
import { Link, useNavigate } from 'react-router-dom'
import Constants from '../utility/Constants';
export default function Navigation(props) {
    const navigate = useNavigate();
    const handleLogout = () => {
        Constants.LOGIN_INFO.loggedIN = false;
        Constants.LOGIN_INFO.userData = {};
        navigate(Constants.LOGIN_PAGE, { replace: true });
    }
    return (
        <>
            <div className={classes.body}>
                <div className={classes.header} >
                    <ul className={classes.navlink}>
                        <li className={classes.left}>Hi, {props.userName}</li>
                        <li className={classes.a}><a href='#' onClick={handleLogout}>Logout</a></li>
                        <li className={classes.a}><a href={Constants.MORE_INFO_LINK}>More Info</a></li>
                        {props.isHome ? <></> : <li className={classes.a}><Link to={Constants.MAIN_PAGE} replace={true}>Home</Link></li>}
                    </ul>
                </div>
                <div>
                    {props.children}
                </div>
            </div>

        </>

    );
}