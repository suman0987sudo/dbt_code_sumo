{% macro concat_line(col1,col2) -%}
concat({{ col1 }},' ',{{ col2 }})::varchar
{%- endmacro %}