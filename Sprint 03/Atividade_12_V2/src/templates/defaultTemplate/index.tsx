import React from "react";

import { Grid, Container } from "./styles";
import { BrowserRouter } from "react-router-dom";
import GlobalStyles from "../../Styles/GlobalStyles";
import LogoThunderHawks from "../../components/default/LogoThunderHawks";
import UserInformationBar from "../../components/UserInformationBar";
import MenuBar from "../../components/MenuBar";

import SystemRoutes from "../../Routes/SystemRoutes";
import { hasUserAuthenticated } from "../../components/Store/Access";
import LoginPage from "../../Pages/LoginPage";

const defaultTemplate: React.FC = () => {
  var isAuthenticated = hasUserAuthenticated();

  if (!isAuthenticated) {
    return (
      <BrowserRouter>
        <LoginPage />
      </BrowserRouter>
    );
  } else {
    return (
      <BrowserRouter>
        <>
          <Grid>
            <LogoThunderHawks />
            <UserInformationBar />
            <MenuBar />
            <Container>
              <SystemRoutes />
            </Container>
          </Grid>
          <GlobalStyles />
        </>
      </BrowserRouter>
    );
  }
};

export default defaultTemplate;
