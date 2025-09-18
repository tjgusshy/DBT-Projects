
  
    
        create or replace table `dbt-project`.`default`.`bronze_store`
      
      
  using delta
      
      
      
      
      
      
      
      as
      SELECT 
        *
 FROM
        `dbt-project`.`source`.`dim_store`
  