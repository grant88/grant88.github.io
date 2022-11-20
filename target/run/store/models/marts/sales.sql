
      insert into "netology"."store"."sales" ("id", "invoice_id", "tran_datetime", "product_line_id", "supercenter_id", "customer_type_id", "gender_id", "payment_id", "quantity", "unit_price", "tax_5_percent", "total", "cogs", "gross_income")
    (
        select "id", "invoice_id", "tran_datetime", "product_line_id", "supercenter_id", "customer_type_id", "gender_id", "payment_id", "quantity", "unit_price", "tax_5_percent", "total", "cogs", "gross_income"
        from "sales__dbt_tmp153336326487"
    )


  