{% macro response(col_name) %}
    CASE 
        WHEN {{col_name }} > 95 THEN 'VERY GOOD'
        WHEN {{col_name }} BETWEEN 60 AND 95 THEN 'GOOD'
        WHEN {{col_name }} BETWEEN 50 AND 60 THEN 'FAIR'
        ELSE 'POOR'
    END
{% endmacro %}