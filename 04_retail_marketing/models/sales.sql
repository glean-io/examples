select 
  hash("order_id" || '_' || "line_number") as "line_id",
  "order_id",
  "line_number",
  hash("pizza_type" || "pizza_shape" || "pizza_size" ) as "product_id",
  "quantity",
  "customer_id",
  "order_value",
  "timestamp"
from "./data/sales_data.parquet"
