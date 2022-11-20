
      insert into "netology"."store"."customer_type" ("customer_type_id", "customer_type", "run_date", "inserted_at")
    (
        select "customer_type_id", "customer_type", "run_date", "inserted_at"
        from "customer_type__dbt_tmp153335685453"
    )


  