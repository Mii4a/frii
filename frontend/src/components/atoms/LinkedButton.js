import React from 'react';
import styled from 'styled-components';
import {Link} from 'react-router-dom'


const LinkedButton = ({
    border,
    borderRadius,
    className,
    color,
    margin = '0 0 0 0',
    padding,
    sentence,
    to,
    width
  }) => (
  <StyledButton
    className={className}
    border={border}
    borderRadius={borderRadius}
    color={color}
    margin={margin}
    width={width}
  >
    <StyledLink
      to={to}
      padding={padding}
    >
      {sentence}
    </StyledLink> 
  </StyledButton>
);


const StyledButton = styled.div`
  border: ${({border}) => border};
  border-radius: ${({borderRadius}) => borderRadius};
  color: ${({color}) => color};
  font-size: 1rem;
  margin: ${({margin}) => margin};
  text-align: center;
  width: ${({width}) => width};
`;

const StyledLink = styled(Link)`
  display: inherit;
  padding: ${({padding}) => padding};
  text-decoration: none;
  width: ${({width}) => width};
`;

export default LinkedButton;