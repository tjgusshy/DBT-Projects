

{% test non_negative_test (model,column_name) %}
  SELECT 
    *
  FROM {{ ref('bronze_sales') }}
  WHERE {{ column_name }} < 0
{% endtest %}