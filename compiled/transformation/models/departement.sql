

WITH
    departement AS (
        SELECT
            version AS version,
            insee_dep AS code,            
            nom AS nom,
            insee_reg AS code_reg,
            long AS long,
            lat AS lat           
        FROM
            "entrepot"."public"."cog_carto_departement"
    )
    SELECT
        *
    FROM
        departement