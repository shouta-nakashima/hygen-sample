---
to: <%= abs_path %>/<%= component_name %>.tsx
---
import {FC} from "react";
<% if (have_style) { -%>
import style from "./style.module.css"
<% } -%>
<% if (have_hooks) { -%>
import { useDependencies } from './dependencies'
<% } -%>
<% if (have_props) { -%>

export type Props = {
};
<% } -%>


const <%= component_name %>: <%- type_annotate %> = <%= props %> => {
<% if (have_hooks) { -%>
  const deps = useDependencies<%= props %>
<% } -%>
  return (
<% if (have_style) { -%>
    <<%= tag %> className={style.module}>
<% } else { -%>
    <<%= tag %>>
<% } -%>
    </<%= tag %>>
  );
}

export default <%= component_name %>