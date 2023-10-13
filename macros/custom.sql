-- macros/my_macros.sql

{% macro custom_row_number(rows) %}
    {%- set row_num = 0 %}
    {%- for row in rows %}
        {%- set row_num = row_num + 1 %}
        {{- row_num }}{% if not loop.last %}, {% endif %}
    {%- endfor %}
{% endmacro %}
