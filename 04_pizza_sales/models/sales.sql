{{
  config(
    materialized = "external",
    location = "./data/dbt/sales.parquet",
    columns = [
      {
        "name": "Price",
        "description": "the price per pizza"
      },
      {
        "name": "Quantity",
        "description": "the number of pizzas"
      }
    ]
  )
}}

select *
from "./data/sales_data.parquet"
