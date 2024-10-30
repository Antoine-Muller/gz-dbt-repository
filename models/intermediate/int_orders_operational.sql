select
   s.orders_id,
   s.date_date,
   ROUND (s.margin + sh.shipping_fee - (sh.logcost + sh.ship_cost ),2) AS operational_margin,
   s.quantity,
   s.revenue,
   s.purchase_cost,
   s.margin,
   sh.shipping_fee,
   sh.logcost,
   sh.ship_cost
from {{ ref('int_orders_margin') }} as s
left join {{ ref('stg_gz_ship') }} as sh
     USING(orders_id)
 ORDER BY orders_id desc


    