
    
    

with all_values as (

    select
        payment as value_field,
        count(*) as n_records

    from (select * from "netology"."store"."sales_stg" where tran_datetime::date = current_date) dbt_subquery
    group by payment

)

select *
from all_values
where value_field not in (
    'Cash','Credit card','Ewallet'
)


