
select
    md5(cast(coalesce(cast(payment as TEXT), '') as TEXT)) as payment_id,
    payment,
    '2022-08-01'::date as run_date,
    now() as inserted_at
from "netology"."store"."sales_stg" as tab
where tran_datetime::date = '2022-08-01'::date

    and md5(cast(coalesce(cast(tab.payment as TEXT), '') as TEXT)) not in (select payment_id from "netology"."store"."payment")

group by
    1, 2