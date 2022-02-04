import styled from "styled-components";

export const Container = styled.div`
  grid-area: AL;
  display: flex;
  align-items: center;
  justify-content: center;

  width: 100%;
  height: 100%;

  background: var(--default-menu-bar-background);
  border-right: 1px solid var(--default-menu-bar-border);

  > img {
    width: 60px;
  }
`;
