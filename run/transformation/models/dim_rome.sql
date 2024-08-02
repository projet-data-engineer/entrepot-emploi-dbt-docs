
      
        
            delete from "entrepot"."emploi"."dim_rome"
            where (
                code_3) in (
                select (code_3)
                from "dim_rome__dbt_tmp192832768852"
            );

        
    

    insert into "entrepot"."emploi"."dim_rome" ("code_3", "libelle_3", "code_2", "libelle_2", "code_1", "libelle_1")
    (
        select "code_3", "libelle_3", "code_2", "libelle_2", "code_1", "libelle_1"
        from "dim_rome__dbt_tmp192832768852"
    )
  