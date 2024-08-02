
      
        
            delete from "entrepot"."emploi"."departement"
            where (
                code) in (
                select (code)
                from "departement__dbt_tmp192832493636"
            );

        
    

    insert into "entrepot"."emploi"."departement" ("version", "code", "nom", "code_reg", "long", "lat")
    (
        select "version", "code", "nom", "code_reg", "long", "lat"
        from "departement__dbt_tmp192832493636"
    )
  