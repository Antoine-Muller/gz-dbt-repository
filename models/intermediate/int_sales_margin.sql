select
   s.date_date,
   s.orders_id,
   s.revenue,
   s.quantity,
   p.purchase_price,
   ROUND ((quantity * purchase_price),2) AS purchase_cost,
   ROUND (revenue - (quantity * purchase_price),2) AS margin
from {{ ref('stg_gz_sales') }} as s
left join {{ ref('stg_gz_product') }} as p
on s.products_id = p.products_id

