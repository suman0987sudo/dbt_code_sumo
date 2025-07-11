{% macro trim_spaces(col) -%}
ltrim(rtrim({{ col }}))::varchar
{%- endmacro %}
