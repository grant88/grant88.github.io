
      
  
    

  create  table "netology"."store"."customer_type"
  as (
    
select
    md5(cast(coalesce(cast(customer_type as TEXT), '') as TEXT)) as customer_type_id,
    customer_type,
    '2022-08-01'::date as run_date,
    now() as inserted_at
from "netology"."store"."sales_stg" as tab
where tran_datetime::date = '2022-08-01'::date

group by
    1, 2
  );
  
  