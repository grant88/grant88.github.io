
    
    

select
    product_line_id as unique_field,
    count(*) as n_records

from "netology"."store"."product_line"
where product_line_id is not null
group by product_line_id
having count(*) > 1


