
  SELECT 
    *
  FROM `dbt-project`.`default`.`bronze_sales`
  WHERE gross_amount < 0
