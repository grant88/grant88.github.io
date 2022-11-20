
    
    

select
    gender_id as unique_field,
    count(*) as n_records

from "netology"."store"."gender"
where gender_id is not null
group by gender_id
having count(*) > 1


