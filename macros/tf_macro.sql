
{% macro ids(n) %}
    {% if n is none %}
        {{ 1 }}
    {% else %}
        {{ n }}+1
    {% endif %}
{% endmacro %}