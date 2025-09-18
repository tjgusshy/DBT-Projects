
  
    
        create or replace table `dbt-project`.`default`.`bronze_customer`
      
      
  using delta
      
      
      
      
      
      
      
      as
      SELECT 
        *
 FROM
        `dbt-project`.`source`.`dim_customer`
  