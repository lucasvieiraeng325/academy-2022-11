with
    source_products as (
        select
        cast (product_id as int) as id_produto				
        , cast (product_name as int) as nome_produto 		
        , cast (supplier_id	as int) as id_fornecedor			
        , cast (category_id	as int) as id_categoria			
        , cast (quantity_per_unit as string) as quantidade_por_unidade		
        , unit_price  as preco_unitario 				
        , cast (units_in_stock as int) as unidades_no_estoque				
        , cast (units_on_order as int) as unidades_por_ordem				
        , cast (reorder_level as int) as level_de_pedido				
        , case 
            when discontinued = 1 then true
            else false
        end as is_descontinuado		
        from {{ source('erp','products') }}
    )
select *
from source_products