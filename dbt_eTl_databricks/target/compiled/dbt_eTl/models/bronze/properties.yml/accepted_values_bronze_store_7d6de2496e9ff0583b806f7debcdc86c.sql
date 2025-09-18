
    
    

with all_values as (

    select
        store_name as value_field,
        count(*) as n_records

    from `dbt-project`.`default`.`bronze_store`
    group by store_name

)

select *
from all_values
where value_field not in (
    'MegaMart Toronto','MegaMart San Jose','MegaMart Austin','MegaMart Brooklyn','MegaMart Manhattan'
)


