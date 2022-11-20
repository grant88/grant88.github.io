
      insert into "netology"."store"."gender" ("gender_id", "gender", "run_date", "inserted_at")
    (
        select "gender_id", "gender", "run_date", "inserted_at"
        from "gender__dbt_tmp153335861632"
    )


  