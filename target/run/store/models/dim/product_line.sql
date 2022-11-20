
      insert into "netology"."store"."product_line" ("product_line_id", "product_line", "run_date", "inserted_at")
    (
        select "product_line_id", "product_line", "run_date", "inserted_at"
        from "product_line__dbt_tmp153336179654"
    )


  