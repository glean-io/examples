select 
  hash("pizza_type" || "pizza_shape" || "pizza_size" ) as "product_id",
  "pizza_size",
  "pizza_shape",
  "pizza_type",
  "Price"
from "./data/sales_data.parquet"
group by all
