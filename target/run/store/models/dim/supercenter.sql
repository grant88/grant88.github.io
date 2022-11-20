
      insert into "netology"."store"."supercenter" ("supercenter_id", "branch", "city", "run_date", "inserted_at")
    (
        select "supercenter_id", "branch", "city", "run_date", "inserted_at"
        from "supercenter__dbt_tmp153336506416"
    )


  