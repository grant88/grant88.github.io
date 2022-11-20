
    
    

select
    customer_type as unique_field,
    count(*) as n_records

from "netology"."store"."customer_type"
where customer_type is not null
group by customer_type
having count(*) > 1


