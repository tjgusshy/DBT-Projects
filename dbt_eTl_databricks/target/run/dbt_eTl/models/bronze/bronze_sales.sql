
  
  
  create or replace view `dbt-project`.`bronze`.`bronze_sales`
  
  as (
    ---
SELECT 
        *
 FROM
        `dbt-project`.`source`.`fact_sales`
  )
