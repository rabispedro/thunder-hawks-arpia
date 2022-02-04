import styled from "styled-components";
import { PencilSquare } from "styled-icons/bootstrap";

export const Container = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  height: 100%;
`;

export const AvatarArea = styled.div`
  display: flex;
  flex-direction: column;
  border-right: 1px solid var(--user-area-edit-content-border);
  padding: 25px;
  width: 25%;
`;

export const ImageAvatar = styled.img`
  display: flex;
  width: 230px;
  margin-right: 30px;
  border-radius: 12px;
  border: 2px solid white;
  box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
`;

export const IconArea = styled.div`
  display: flex;
  background: var(--user-area-edit-button-background);
  padding: 12px;
  width: 50px;
  border-radius: 50%;
  border: 3px solid var(--user-area-edit-button-border);

  box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.4);

  position: relative;
  left: 205px;
  top: -25px;

  transition: ease-in-out 0.4s;
  cursor: pointer;

  &:hover {
    box-shadow: 0px 0px 10px rgba(44, 208, 113, 0.8);
  }
`;

export const EditIcon = styled(PencilSquare)`
  color: var(--user-area-edit-button-color);
`;

export const UserDetails = styled.div`
  display: flex;
  flex-direction: column;

  > strong {
    color: var(--user-area-edit-content-strong);
    font-size: 16px;
    padding-bottom: 12px;
  }

  > span {
    font-size: 14px;
    color: var(--user-area-edit-content-span);
  }
`;

export const EditUserArea = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 25px;
  width: 74%;
`;

export const Title = styled.div`
  display: flex;
  font-size: 25px;
  color: var(--system-title);
  padding-bottom: 30px;
`;

export const FormArea = styled.form`
  display: flex;
  flex-direction: column;
  width: 100%;
`;

export const LabelForm = styled.label`
  display: flex;
  color: var(--Login-body-label-text);
  padding: 18px 0 12px 0;
  font-size: 14px;
`;

export const InputForm = styled.input`
  display: flex;
  border: 1px solid var(--Login-body-input-border);
  color: var(--Login-body-input-text);

  padding: 22px;
  border-radius: 12px;
`;

export const DoubleInputArea = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  width: 100%;
`;

export const DoubleInput = styled.div`
  display: flex;
  flex-direction: column;
  width: 49.5%;
`;

export const DoubleInputItem = styled.input`
  display: flex;
  border: 1px solid var(--Login-body-input-border);
  color: var(--Login-body-input-text);

  padding: 22px;
  border-radius: 12px;
  width: 100%;
`;

export const ButtonsArea = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
  border-top: 1px solid var(--Login-body-input-border);

  padding: 25px 0;
`;

export const CreateButton = styled.input`
  display: flex;
  justify-content: center;
  background: var(--user-area-create-button-01-background);
  color: var(--user-area-create-button-01-text);
  width: 220px;

  padding: 22px;
  border-radius: 12px;
  border: 2px solid white;

  transition: ease-in-out 0.4s;
  cursor: pointer;

  &:hover {
    box-shadow: 0px 0px 12px rgba(44, 208, 113, 1);
  }
`;

export const DeleteButton = styled.input`
  display: flex;
  justify-content: center;
  background: var(--user-area-delete-button-01-background);
  color: var(--user-area-delete-button-01-text);
  width: 220px;
  margin: 0 25px;

  padding: 22px;
  border-radius: 12px;
  border: 2px solid white;

  transition: ease-in-out 0.4s;
  cursor: pointer;

  &:hover {
    box-shadow: 0px 0px 12px rgba(255, 122, 39, 1);
  }
`;

export const CancelButton = styled.input`
  display: flex;
  justify-content: center;
  background: var(--user-area-cancel-button-01-background);
  color: var(--user-area-cancel-button-01-text);
  width: 220px;

  padding: 22px;
  border-radius: 12px;
  border: 2px solid white;

  transition: ease-in-out 0.4s;
  cursor: pointer;

  &:hover {
    box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.4);
  }
`;
