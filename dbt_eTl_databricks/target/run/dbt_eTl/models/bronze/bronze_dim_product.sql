
  
    
        create or replace table `dbt-project`.`default`.`bronze_dim_product`
      
      
  using delta
      
      
      
      
      
      
      
      as
      SELECT 
        *
 FROM
        `dbt-project`.`source`.`dim_product`
  