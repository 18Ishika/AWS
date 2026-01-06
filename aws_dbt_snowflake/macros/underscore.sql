{% macro underscore(col_name )%}
    REPLACE({{col_name}},' ','_')
{% endmacro %}