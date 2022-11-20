
    
    

select
    id as unique_field,
    count(*) as n_records

from "netology"."store"."sales_stg"
where id is not null
group by id
having count(*) > 1


