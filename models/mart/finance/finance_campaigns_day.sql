
select
   c.date_date,
   ROUND ((f.operational_margin - c.ads_cost),2) AS ads_margin,
   f.average_basket,
   f.operational_margin,
   c.ads_cost,
   c.ads_impression,
   c.ads_click,
   f.quantity,
   f.revenue,
   f.purchase_cost, 
   f.margin,
   f.shipping_fee,
   f.logcost,
   f.ship_cost
from {{ ref('int_campaigns_day') }} AS c
left join {{ ref('finance_days') }} AS f
     USING(date_date)
 ORDER BY date_date desc

