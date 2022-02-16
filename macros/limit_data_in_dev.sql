{% macro limit_data_in_dev(column_name, limit = 10000) -%}
{% if target.name == 'dev' %}
where {{ column_name }} >= date_add(current_date(), interval -{{ limit }} day)
{% endif %}
{%- endmacro %}