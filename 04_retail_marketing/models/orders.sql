select 
  "order_id",
  "payment_method",
  "delivery",
  "type",
  "customer_id"
from "./data/sales_data.parquet"
group by all
