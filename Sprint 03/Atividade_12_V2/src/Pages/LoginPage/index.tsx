import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import { saveUser } from "../../components/Store/Access";
import GlobalStyles from "../../Styles/GlobalStyles";

import {
  Container,
  FormArea,
  LoginArea,
  LoginTitle,
  LabelLogin,
  InputLogin,
  ButtonsArea,
  LoginButton,
  ForgetPassButton,
} from "./styles";

const LoginPage: React.FC = () => {
  const [inputLogin, setInputLogin] = useState("");
  const [inputPassword, setInputPassword] = useState("");

  let navigate = useNavigate();

  const loginExecute = () => {
    if (inputLogin.length > 2) {
      saveUser(inputLogin);
      navigate("/list");
    } else {
      alert("Verifique seu Login e tente novamente...");
    }
  };

  return (
    <>
      <Container>
        <LoginArea>
          <LoginTitle>LOGIN</LoginTitle>

          <FormArea>
            <LabelLogin>Login</LabelLogin>
            <InputLogin
              name="inputLogin"
              value={inputLogin}
              onInput={(e: any) => setInputLogin(e.target.value)}
              placeholder="Informe seu Login"
            ></InputLogin>
            <LabelLogin>Senha</LabelLogin>
            <InputLogin
              name="inputPassword"
              value={inputPassword}
              onInput={(e: any) => setInputPassword(e.target.value)}
              placeholder="Informe sua Senha"
            ></InputLogin>
          </FormArea>

          <ButtonsArea>
            <LoginButton
              type="button"
              value="Login"
              onClick={() => {
                loginExecute();
              }}
            />
            <ForgetPassButton type="button" value="Esqueci minha Senha" />
          </ButtonsArea>
        </LoginArea>
      </Container>
      <GlobalStyles />
    </>
  );
};

export default LoginPage;
