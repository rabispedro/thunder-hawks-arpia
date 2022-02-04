import styled from "styled-components";

/*
  AL - Area da Logo
  AD - Area de detalhes
  AM - Area de Menu
  AC - Area de Conteudo
*/

export const Grid = styled.div`
  display: grid;

  grid-template-columns: 98px 3fr;
  grid-template-rows: 98px 3fr;

  grid-template-areas:
    "AL AD"
    "AM AC";

  height: 100%;
`;

export const Container = styled.div`
  display: flex;
  flex-direction: column;
  background: var(--background-02);

  margin: 25px;
  padding: 25px;
  border-radius: 12px;
  border: 1px solid var(--default-menu-bar-border);

  overflow-y: scroll;
`;
