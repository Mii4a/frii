import React from 'react';
import './assets/App.css';
import styled from 'styled-components';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import LogIn from './pages/LogIn';
import SignUp from './pages/SignUp'
import Welcome from './pages/Welcome'

const Wrapper = styled.div``;


export default class App extends React.Component {
  render () {
    return (
      <Wrapper>
        <Router>
          <Route exact path="/" component={Welcome}></Route>
          <Route exact path="/signup" component={SignUp}></Route>
          <Route exact path="/login" component={LogIn}></Route>
        </Router>
      </Wrapper>
    )
  }
}
