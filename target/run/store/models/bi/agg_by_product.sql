
  
    

  create  table "kjhxwmdz"."store"."agg_by_product__dbt_tmp"
  as (
    
select
    product.product_line,
    sum(total) as total_sum
from "kjhxwmdz"."store"."sales" as tab
left join "kjhxwmdz"."store"."product_line" as product
    on  tab.product_line_id = product.product_line_id
group by
    product.product_line
  );
  