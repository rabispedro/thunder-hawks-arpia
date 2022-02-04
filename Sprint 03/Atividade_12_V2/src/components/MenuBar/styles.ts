import styled from "styled-components";
import { Person, ListUl, BoxArrowUpLeft } from "styled-icons/bootstrap";

export const Container = styled.div`
  grid-area: AM;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-start;

  width: 100%;
  height: 100%;

  background: var(--default-menu-bar-background);
  border-right: 1px solid var(--default-menu-bar-border);
`;

export const UserIcon = styled(Person)`
  width: 33px;
  color: var(--default-menu-bar-icon02);
  margin: 20px 0;
`;

export const ListIcon = styled(ListUl)`
  width: 33px;
  color: var(--default-menu-bar-icon02);
  margin: 20px 0;
`;

export const ExitIcon = styled(BoxArrowUpLeft)`
  width: 30px;
  color: var(--default-menu-bar-icon02);
  margin: 20px 0;
`;
