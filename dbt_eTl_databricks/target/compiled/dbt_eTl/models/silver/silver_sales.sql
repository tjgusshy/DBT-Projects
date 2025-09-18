with sales as (
    SELECT 
    sales_id,
    payment_method,
    product_sk,
    customer_sk,
    gross_amount,
    
    unit_price*quantity
 as cal_gross_amt
    from `dbt-project`.`bronze`.`bronze_sales`
),
products as (
    SELECT 
    product_sk,
    category
    from `dbt-project`.`default`.`bronze_dim_product`
),
customer as (
    SELECT 
    customer_sk,
    gender
    from `dbt-project`.`default`.`bronze_customer`

),

joinedtable as (SELECT 
    sales.sales_id,
    sales.gross_amount,
    sales.cal_gross_amt,
    products.category,
    sales.payment_method,
    customer.gender
from sales join products on sales.product_sk = products.product_sk
join customer on sales.customer_sk = customer.customer_sk)

SELECT category,
gender,
round(sum(gross_amount), 2) as total_sales
from joinedtable
group by all
---- category, gender, payment_method