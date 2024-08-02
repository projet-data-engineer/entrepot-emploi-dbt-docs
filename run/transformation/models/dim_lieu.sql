
      
        
            delete from "entrepot"."emploi"."dim_lieu"
            where (
                code) in (
                select (code)
                from "dim_lieu__dbt_tmp192832484963"
            );

        
    

    insert into "entrepot"."emploi"."dim_lieu" ("version", "code", "code_parent", "code_dep", "code_reg", "nom", "population", "long", "lat")
    (
        select "version", "code", "code_parent", "code_dep", "code_reg", "nom", "population", "long", "lat"
        from "dim_lieu__dbt_tmp192832484963"
    )
  