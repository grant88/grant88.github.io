
    
    

select
    supercenter_id as unique_field,
    count(*) as n_records

from "netology"."store"."supercenter"
where supercenter_id is not null
group by supercenter_id
having count(*) > 1


