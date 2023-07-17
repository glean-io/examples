select 
  hash("Pizza Type" || "Pizza Shape" || "Pizza Size" ) as "Product ID",
  "Pizza Size",
  "Pizza Shape",
  "Pizza Type",
  "Price"
from "./data/sales_data.parquet"
group by all
