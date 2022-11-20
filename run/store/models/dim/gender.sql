
      
  
    

  create  table "netology"."store"."gender"
  as (
    
select
    md5(cast(coalesce(cast(gender as TEXT), '') as TEXT)) as gender_id,
    gender,
    '2022-08-01'::date as run_date,
    now() as inserted_at
from "netology"."store"."sales_stg" as tab
where tran_datetime::date = '2022-08-01'::date

group by
    1, 2
  );
  
  