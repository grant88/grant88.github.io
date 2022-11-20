
select
    md5(cast(coalesce(cast(gender as TEXT), '') as TEXT)) as gender_id,
    gender,
    '2022-08-01'::date as run_date,
    now() as inserted_at
from "netology"."store"."sales_stg" as tab
where tran_datetime::date = '2022-08-01'::date

    and md5(cast(coalesce(cast(tab.gender as TEXT), '') as TEXT)) not in (select gender_id from "netology"."store"."gender")

group by
    1, 2