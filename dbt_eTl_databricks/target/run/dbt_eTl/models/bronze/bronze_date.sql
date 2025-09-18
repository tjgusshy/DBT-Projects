
  
  
  create or replace view `dbt-project`.`bronze`.`bronze_date`
  
  as (
    SELECT 
        *
 FROM
        `dbt-project`.`source`.`dim_date`
  )
