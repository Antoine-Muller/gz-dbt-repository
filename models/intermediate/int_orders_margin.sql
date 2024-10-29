SELECT 
orders_id,
date_date,
ROUND(SUM(revenue),2) AS revenue, 
ROUND (SUM(quantity),2) as Quantity,
ROUND(SUM(purchase_cost),2) AS purchase_cost,
ROUND(SUM(margin),2) AS margin,
from {{ ref('int_sales_margin') }} 
GROUP BY 
 date_date,
 orders_id
