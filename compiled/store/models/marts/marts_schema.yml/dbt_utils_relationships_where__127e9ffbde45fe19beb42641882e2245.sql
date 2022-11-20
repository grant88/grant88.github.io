




with left_table as (

  select
    customer_type_id as id

  from "netology"."store"."sales"

  where customer_type_id is not null
    and 1=1

),

right_table as (

  select
    customer_type_id as id

  from "netology"."store"."customer_type"

  where customer_type_id is not null
    and tran_datetime::date = current_date

),

exceptions as (

  select
    left_table.id,
    right_table.id as right_id

  from left_table

  left join right_table
         on left_table.id = right_table.id

  where right_table.id is null

)

select * from exceptions

