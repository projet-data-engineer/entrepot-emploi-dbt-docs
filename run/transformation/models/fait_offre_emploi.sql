
      
        
            delete from "entrepot"."emploi"."fait_offre_emploi"
            where (
                id) in (
                select (id)
                from "fait_offre_emploi__dbt_tmp192832775264"
            );

        
    

    insert into "entrepot"."emploi"."fait_offre_emploi" ("id", "date_creation", "lieu_travail_code", "code_naf", "code_rome", "entreprise_adaptee", "type_contrat", "nature_contrat", "experience_exige", "alternance", "nombre_postes", "accessible_th", "qualification_code")
    (
        select "id", "date_creation", "lieu_travail_code", "code_naf", "code_rome", "entreprise_adaptee", "type_contrat", "nature_contrat", "experience_exige", "alternance", "nombre_postes", "accessible_th", "qualification_code"
        from "fait_offre_emploi__dbt_tmp192832775264"
    )
  