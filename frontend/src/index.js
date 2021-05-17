import React from 'react';
import ReactDOM from 'react-dom';
import './assets/index.css';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import { ThemeProvider as MaterialThemeProvider,
         StylesProvider
} from '@material-ui/styles';
import styled, 
       { ThemeProvider as StyledThemeProvider 
} from 'styled-components';
import theme from './theme'

import App from './App';
import LogIn from './pages/LogIn';
import SignUp from './pages/SignUp'
import Welcome from './pages/Welcome'
import * as serviceWorker from './serviceWorker';

const root = document.getElementById('root');

ReactDOM.render(
  <React.StrictMode>
    <StylesProvider>
      <MaterialThemeProvider theme={theme}>
        <StyledThemeProvider theme={theme}>
          <App/>
        </StyledThemeProvider>
      </MaterialThemeProvider>
    </StylesProvider>
  </React.StrictMode>,
  root
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
