
    
    

select
    customer_type_id as unique_field,
    count(*) as n_records

from "netology"."store"."customer_type"
where customer_type_id is not null
group by customer_type_id
having count(*) > 1


