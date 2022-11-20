
    
    

select
    invoice_id as unique_field,
    count(*) as n_records

from "netology"."raw"."supermarket_sales"
where invoice_id is not null
group by invoice_id
having count(*) > 1


