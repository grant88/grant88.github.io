
      insert into "netology"."store"."payment" ("payment_id", "payment", "run_date", "inserted_at")
    (
        select "payment_id", "payment", "run_date", "inserted_at"
        from "payment__dbt_tmp153336011966"
    )


  