import './App.css';
import React from 'react';
import { Route, Routes } from 'react-router-dom'
import {Main, Login, Register,Result} from './components/shared-components'
import {ThemeProvider } from '@mui/material'
import {theme} from './resources/theme'
import Constants from './utility/Constants';


function App() {
  return (
    <ThemeProvider theme={theme}>
      <div className="App">
        <Routes>
          <Route path={Constants.LOGIN_PAGE} element={<Login />} />
          <Route path={Constants.REGISTER_PAGE} element={<Register />} />
          <Route path={Constants.MAIN_PAGE} element={<Main />} />
          <Route path={Constants.RESULT_PAGE} element={<Result />} />
        </Routes>
      </div>
    </ThemeProvider>
  );
}

export default App;
