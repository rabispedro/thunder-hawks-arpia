import React from "react";

import { Container } from "./styles";

import ImgLogo from "../../../assets/logo-th.jpg";

const LogoThunderHawks: React.FC = () => {
  return (
    <Container>
      <img src={ImgLogo} alt="Logo TH" />
    </Container>
  );
};

export default LogoThunderHawks;
