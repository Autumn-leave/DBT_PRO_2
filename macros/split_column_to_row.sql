{% macro split_column_to_row(column_name) %}
cross join unnest{{ column_name }} as output_column
{% endmacro %}
