
      insert into "netology"."store"."transactions" ("tran_datetime", "customer_type", "gender", "payment", "product_line", "branch", "city", "total_count", "total_quantity", "total_sum", "gross_income_sum")
    (
        select "tran_datetime", "customer_type", "gender", "payment", "product_line", "branch", "city", "total_count", "total_quantity", "total_sum", "gross_income_sum"
        from "transactions__dbt_tmp153336656037"
    )


  