with
    source_shippers as (
        select
            cast ( shipper_id as string) as id_transportadoras			
            , cast( company_name  as string) as nome_da_empresa			
            , cast( phone as string)  as telefone_da_empresa	
        from {{ source('erp','shippers') }}
    )
select *
from source_shippers