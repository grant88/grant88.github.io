
      
  
    

  create  table "netology"."store"."product_line"
  as (
    
select
    md5(cast(coalesce(cast(product_line as TEXT), '') as TEXT)) as product_line_id,
    product_line,
    '2022-08-01'::date as run_date,
    now() as inserted_at
from "netology"."store"."sales_stg" as tab
where tran_datetime::date = '2022-08-01'::date

group by
    1, 2
  );
  
  