
select
    md5(cast(coalesce(cast(branch as TEXT), '') || '-' || coalesce(cast(city as TEXT), '') as TEXT)) as supercenter_id,
    branch,
    city,
    '2022-08-01'::date as run_date,
    now() as inserted_at
from "netology"."store"."sales_stg" as tab
where tran_datetime::date = '2022-08-01'::date

    and md5(cast(coalesce(cast(tab.branch as TEXT), '') || '-' || coalesce(cast(tab.city as TEXT), '') as TEXT)) not in (select supercenter_id from "netology"."store"."supercenter")

group by
    1, 2, 3