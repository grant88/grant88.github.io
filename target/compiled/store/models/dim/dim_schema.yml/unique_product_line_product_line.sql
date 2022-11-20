
    
    

select
    product_line as unique_field,
    count(*) as n_records

from "netology"."store"."product_line"
where product_line is not null
group by product_line
having count(*) > 1


