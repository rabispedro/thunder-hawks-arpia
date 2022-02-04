import styled from "styled-components";
import { Person, ListUl, BoxArrowUpLeft } from "styled-icons/bootstrap";
import { Props } from ".";

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

export const UserIcon = styled(Person)<Props>`
  width: 33px;
  color: ${(props) =>
    props.currentSelectedPath.indexOf("user") > 0
      ? "var(--THEME_COLOR_007)"
      : "var(--THEME_COLOR_003)"};
  margin: 20px 0;
  cursor: pointer;

  &:hover {
    color: var(--THEME_COLOR_002);
  }
`;

export const ListIcon = styled(ListUl)<Props>`
  width: 33px;
  color: ${(props) =>
    props.currentSelectedPath.indexOf("list") > 0 ||
    props.currentSelectedPath === "/"
      ? "var(--THEME_COLOR_007)"
      : "var(--THEME_COLOR_003)"};
  margin: 20px 0;
  cursor: pointer;

  &:hover {
    color: var(--THEME_COLOR_002);
  }
`;

export const ExitIcon = styled(BoxArrowUpLeft)<Props>`
  width: 30px;
  color: ${(props) =>
    props.currentSelectedPath.indexOf("login") > 0
      ? "var(--THEME_COLOR_007)"
      : "var(--THEME_COLOR_003)"};
  margin: 20px 0;
  cursor: pointer;

  &:hover {
    color: var(--THEME_COLOR_002);
  }
`;
