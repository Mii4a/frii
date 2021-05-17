import React from 'react';
import styled from 'styled-components';
import Header from '../components/organisms/Header'

export default class Welcome extends React.Component {
    render () {
      return (
        <div>
          <Header
            padding={"20px"}
          >

          </Header>
          <p>
            welcome
          </p>
        </div>
      );
    }
}

const Wrapper = styled.div``;