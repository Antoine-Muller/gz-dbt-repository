select
   s.orders_id,
   s.date_date,
   ROUND ((margin + shipping_fee - logcost - ship_cost ),2) AS operational_margin,
   quantity,
from {{ ref('int_orders_margin') }} as s
left join {{ ref('stg_gz_ship') }} as sh
on s.orders_id = sh.orders_id



