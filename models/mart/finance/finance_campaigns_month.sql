select
   EXTRACT (month FROM date_date) as datemonth
     ,ROUND(SUM(ads_margin),1) AS ads_margin
     ,ROUND(SUM(average_basket),1) AS average_basket 
     ,ROUND(SUM(operational_margin),0) AS operational_margin
     ,ROUND(SUM(ads_cost),0) AS ads_cost
     ,ROUND(SUM(ads_impression),0) AS ads_impression
     ,ROUND(SUM(ads_click),0) AS ads_click
     ,ROUND(SUM(quantity),0) AS quantity
     ,ROUND(SUM(revenue),0) AS revenue
     ,ROUND(SUM(purchase_cost),0) AS purchase_cost
     ,ROUND(SUM(margin),0) AS margin
     ,ROUND(SUM(shipping_fee),0) AS shipping_fee
     ,ROUND(SUM(logcost),0) AS logcost
     ,ROUND(SUM(ship_cost),0) AS ship_cost
from {{ ref('finance_campaigns_day') }}
GROUP BY datemonth
 ORDER BY datemonth desc