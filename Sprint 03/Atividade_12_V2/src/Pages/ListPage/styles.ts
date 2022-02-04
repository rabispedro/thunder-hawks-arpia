import styled from "styled-components";

export const Container = styled.div`
  display: flex;
  flex-direction: column;

  justify-content: space-between;
  height: 100%;
`;

export const Title = styled.div`
  display: flex;
  font-size: 25px;
  color: var(--system-title);
  padding-bottom: 30px;
`;

export const ListArea = styled.div`
  display: flex;
  flex-direction: column;
  margin: 30px 0;
`;

export const Avatar = styled.img`
  display: flex;
  width: 90px;
  margin-right: 30px;
  border-radius: 12px;
  border: 2px solid white;
  box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
`;

export const ListItem = styled.div`
  display: flex;
  justify-content: flex-start;
  border-left: 4px solid var(--list-border-left-color);
  padding: 18px;
  border-radius: 6px;
  margin: 8px 0;

  transition: ease-in-out 0.5s;
  &:hover {
    border-left: 4px solid var(--list-border-left-color-hover);
    background: var(--list-border-left-color-background-hover);
  }
`;

export const ItemDetail = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;

  > strong {
    color: var(--list-area-detail-strong-color);
    font-size: 16px;
    margin-bottom: 12px;
  }

  > span {
    color: var(--list-area-detail-span-color);
    font-size: 12px;
  }
`;

export const ButtonsArea = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  border-top: 1px solid var(--list-area-button-border);

  padding: 35px;
  margin: 30px 0;
`;

export const CreateUserButton = styled.input`
  display: flex;
  justify-content: center;
  background: var(--Login-button-01-background);
  color: var(--Login-button-01-text);
  width: 240px;

  padding: 22px;
  border-radius: 12px;
  border: 2px solid white;
  transition: ease-in-out 0.4s;
  cursor: pointer;

  &:hover {
    box-shadow: 0px 0px 10px rgba(44, 208, 113, 0.8);
  }
`;
