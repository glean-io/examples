select 
  hash("Order ID" || '_' || "Line Number") as "Line ID",
  "Order ID",
  "Line Number",
  hash("Pizza Type" || "Pizza Shape" || "Pizza Size" ) as "Product ID",
  "Quantity",
  "Customer ID",
  "Order Value",
  "Timestamp"
from "./data/sales_data.parquet"
