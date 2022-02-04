import styled from "styled-components";

export const Container = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;

  background: var(--background);
`;

export const LoginArea = styled.div`
  display: flex;
  flex-direction: column;
  width: 490px;
  border-radius: 12px;
  overflow: hidden;

  background: var(--background-02);
  box-shadow: 0px 0px 16px rgba(0, 0, 0, 0.3);
`;

export const LoginTitle = styled.div`
  display: flex;
  padding: 31px 0;
  justify-content: center;

  background: var(--Login-title-background);
  color: var(--Login-title-text);
  font-weight: bold;
  font-size: 18px;
`;

export const FormArea = styled.form`
  display: flex;
  flex-direction: column;
  background: var(--Login-body);

  padding: 50px 35px;
`;

export const LabelLogin = styled.label`
  display: flex;
  color: var(--Login-body-label-text);
  padding: 18px 0 12px 0;
  font-size: 14px;
`;

export const InputLogin = styled.input`
  display: flex;
  border: 1px solid var(--Login-body-input-border);
  color: var(--Login-body-input-text);

  padding: 22px;
  border-radius: 12px;
`;

export const ButtonsArea = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  background: var(--Login-button-area-background);

  padding: 35px;
`;

export const LoginButton = styled.input`
  display: flex;
  justify-content: center;
  background: var(--Login-button-01-background);
  color: var(--Login-button-01-text);
  width: 47%;

  padding: 22px;
  border-radius: 12px;
`;

export const ForgetPassButton = styled.input`
  display: flex;
  justify-content: center;
  background: var(--Login-button-02-background);
  color: var(--Login-button-02-text);
  width: 47%;

  padding: 22px;
  border-radius: 12px;
`;
