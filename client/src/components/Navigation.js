import React from 'react';
import classes from '../resources/Navigation.module.css'
import { Link } from 'react-router-dom'
import Constants from '../utility/Constants';
export default function Navigation(props) {
    return (
        <>
        <div className={classes.header} >
            <ul className={classes.navlink}>
                <li className={classes.left}>Hi, {props.userName}</li>
                <li className={classes.a}><Link to='/' replace={true}>Logout</Link></li>
                <li className={classes.a}><a href={Constants.MORE_INFO_LINK}>More Info</a></li>
                {props.isHome ?<></>:<li className={classes.a}><Link to='/main' replace={true}>Home</Link></li>}
            </ul>
        </div>
        <div className={classes.body}>
            {props.children}
        </div>
        </>
        
    );
}