
  
  
  create or replace view `dbt-project`.`default`.`bronze_returns`
  
  as (
    SELECT 
        *
 FROM
        `dbt-project`.`source`.`fact_returns`
  )
