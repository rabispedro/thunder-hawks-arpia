import React from "react";
import {
  ButtonsArea,
  CancelButton,
  CreateButton,
  DeleteButton,
  DoubleInput,
  DoubleInputArea,
  DoubleInputItem,
  EditUserArea,
  FormArea,
  InputForm,
  LabelForm,
  Title,
} from "./styles";

import {
  Container,
  AvatarArea,
  ImageAvatar,
  EditIcon,
  UserDetails,
  IconArea,
} from "./styles";

const UserPage: React.FC = () => {
  const url = "https://avatars.githubusercontent.com/u/97741540";

  var EditingId = "";
  return (
    <Container>
      <AvatarArea>
        <ImageAvatar src={url} />
        <IconArea>
          <EditIcon />
        </IconArea>
        <UserDetails>
          <strong>Fernando de Matos Simões</strong>
          <span>fernando@arpiatecnologia.com.br</span>
        </UserDetails>
      </AvatarArea>

      <EditUserArea>
        <FormArea>
          <Title>
            {EditingId.length > 0 ? "Editar Usuário" : "Novo Usuário"}
          </Title>

          <LabelForm>Nome</LabelForm>
          <InputForm
            name="inputName"
            // value={inputName}
            // onInput={(e: any) => setInputName(e.target.value)}
            placeholder="Informe seu Nome"
            title="Informe seu Nome"
          ></InputForm>
          <LabelForm>Sobrenome</LabelForm>
          <InputForm
            name="inputLastName"
            // value={inputLastName}
            // onInput={(e: any) => setInputLastName(e.target.value)}
            placeholder="Informe seu Sobrenome"
            title="Informe seu Sobrenome"
          ></InputForm>
          <DoubleInputArea>
            <DoubleInput>
              <LabelForm>Nascimento</LabelForm>
              <DoubleInputItem
                name="inputBirthday"
                // value={inputBirthday}
                // onInput={(e: any) => setInputBirthday(e.target.value)}
                placeholder="Informe sua Data de Nascimento (dd/MM/yyyy)"
                title="Informe sua Data de Nascimento (dd/MM/yyyy)"
              />
            </DoubleInput>
            <DoubleInput className={EditingId.length > 0 ? "DontShowIt" : ""}>
              <LabelForm>URL do seu Avatar</LabelForm>
              <DoubleInputItem
                name="inputUrlAvatar"
                // value={inputUrlAvatar}
                // onInput={(e: any) => setInputUrlAvatar(e.target.value)}
                placeholder="Informe a URL do seu Avatar"
                title="Informe a URL do seu Avatar"
              />
            </DoubleInput>
          </DoubleInputArea>
        </FormArea>

        <ButtonsArea>
          <CreateButton
            type="button"
            value="Salvar Usuário"
            onClick={() => {}}
          />
          <DeleteButton
            type="button"
            value="Excluir Usuário"
            onClick={() => {}}
          />
          <CancelButton type="button" value="Cancelar" onClick={() => {}} />
        </ButtonsArea>
      </EditUserArea>
    </Container>
  );
};

export default UserPage;
