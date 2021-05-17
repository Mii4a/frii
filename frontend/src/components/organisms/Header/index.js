import React from 'react';
import styled from 'styled-components'
import LinkedButton from '../../atoms/LinkedButton'
import Logo from　'../../atoms/Logo'
import logoSrc from '../../../assets/imgs/frii-logo.png';

const Header = ({
    margin = '0 0 0 0',
    padding
  }) => (
      <Wrapper
        margin={margin}
        padding={padding}
      >
        <Logo
          src={logoSrc}
        >
        </Logo>
        <LinkedButton
          className="login-button"
          border={"2px solid #000"}
          borderRadius={"40px"}
          color="#222"
          margin="0 0"
          padding="15px 5px"
          width="154px"
          to="signup"
          sentence="ログイン"
        >
        </LinkedButton>
        <LinkedButton
          className="signup-button"
          border={"2px solid #000"}
          borderRadius={"40px"}
          color="#222"
          margin="0 0 0 20px"
          padding="15px 5px"
          width="154px"
          to="signup"
          sentence="登録"
        >
        </LinkedButton>
      </Wrapper>
);

const Wrapper = styled.header`
  align-items: center;
  display: flex;
  margin: ${({margin}) => margin};
  padding: ${({padding}) => padding}
`;

export default Header;