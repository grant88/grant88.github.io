
    
    

select
    payment as unique_field,
    count(*) as n_records

from "netology"."store"."payment"
where payment is not null
group by payment
having count(*) > 1


