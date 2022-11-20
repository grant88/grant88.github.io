
    
    

select
    gender as unique_field,
    count(*) as n_records

from "netology"."store"."gender"
where gender is not null
group by gender
having count(*) > 1


