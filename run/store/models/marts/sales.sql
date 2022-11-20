
      
  
    

  create  table "netology"."store"."sales"
  as (
    
select
    id,
    invoice_id,
    tran_datetime,
    md5(cast(coalesce(cast(product_line as TEXT), '') as TEXT)) as product_line_id,
    md5(cast(coalesce(cast(branch as TEXT), '') || '-' || coalesce(cast(city as TEXT), '') as TEXT)) as supercenter_id,
    md5(cast(coalesce(cast(customer_type as TEXT), '') as TEXT)) as customer_type_id,
    md5(cast(coalesce(cast(gender as TEXT), '') as TEXT)) as gender_id,
    md5(cast(coalesce(cast(payment as TEXT), '') as TEXT)) as payment_id,
    quantity,
    unit_price,
    tax_5_percent,
    total,
    cogs,
    gross_income
from "netology"."store"."sales_stg" as tab
where tran_datetime::date = '2022-08-01'::date

  );
  
  