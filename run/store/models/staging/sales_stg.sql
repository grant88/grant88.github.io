
      insert into "netology"."store"."sales_stg" ("id", "tran_datetime", "invoice_id", "branch", "city", "customer_type", "gender", "product_line", "unit_price", "quantity", "tax_5_percent", "total", "payment", "cogs", "gross_income", "rating")
    (
        select "id", "tran_datetime", "invoice_id", "branch", "city", "customer_type", "gender", "product_line", "unit_price", "quantity", "tax_5_percent", "total", "payment", "cogs", "gross_income", "rating"
        from "sales_stg__dbt_tmp153335384165"
    )


  