
select
    date_trunc('month', tran_datetime) as tran_month,
    customer_type.customer_type,
    gender.gender,
    payment.payment,
    product_line.product_line,
    supercenter.branch,
    supercenter.city,
    count(*) as total_count,
    sum(quantity) as total_quantity,
    sum(total) as total_sum,
    sum(gross_income) as gross_income_sum
from "netology"."store"."sales" as tab
left join "netology"."store"."customer_type" as customer_type
    on  tab.customer_type_id = customer_type.customer_type_id
left join "netology"."store"."gender" as gender
    on  tab.gender_id = gender.gender_id
left join "netology"."store"."payment" as payment
    on  tab.payment_id = payment.payment_id
left join "netology"."store"."product_line" as product_line
    on  tab.product_line_id = product_line.product_line_id
left join "netology"."store"."supercenter" as supercenter
    on  tab.supercenter_id = supercenter.supercenter_id
group by
    date_trunc('month', tran_datetime),
    customer_type.customer_type,
    gender.gender,
    payment.payment,
    product_line.product_line,
    supercenter.branch,
    supercenter.city