select 
  "Order ID",
  "Payment Method",
  "Delivery",
  "Type",
  "Customer ID"
from "./data/sales_data.parquet"
group by all
