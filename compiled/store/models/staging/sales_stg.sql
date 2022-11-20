
select
    id,
    
    to_timestamp(concat(date, time), 'MM/DD/YYYYHH24:MI')
 as tran_datetime,
    invoice_id,
    branch,
    city,
    customer_type,
    gender,
    product_line,
    unit_price,
    quantity,
    tax_5_percent,
    total,
    payment,
    cogs,
    gross_income,
    rating
from "netology"."raw"."supermarket_sales" as tab
where 
    to_timestamp(concat(date), 'MM/DD/YYYY')
 = '2022-08-01'::date

    and 1=1
