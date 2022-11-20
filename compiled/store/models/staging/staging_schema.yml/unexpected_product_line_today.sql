
    
    

with all_values as (

    select
        product_line as value_field,
        count(*) as n_records

    from (select * from "netology"."store"."sales_stg" where tran_datetime::date = current_date) dbt_subquery
    group by product_line

)

select *
from all_values
where value_field not in (
    'Electronic accessories','Fashion accessories','Food and beverages','Health and beauty','Home and lifestyle','Sports and travel'
)


