---
to: "<%= have_hooks ? `${abs_path}/dependencies.ts` : null %>"
---
<% if (have_props) { -%>
import type { Props } from "./<%= component_name %>"
export const useDependencies = (props: Props) => {
  return {}
}
<% } else { -%>
export const useDependencies = () => {
  return {}
}
<% } -%>