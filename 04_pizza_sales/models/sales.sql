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
    ],
    meta = {
      "glean": {
        "glean": "1.0",
        "source": {
          "connectionName": "Uploads",
          "physicalName": "sales.parquet"
        },
        "cols": [
          {
            "id": "row_count",
            "type": "metrics",
            "name": "row count",
            "aggregate": "row_count"
          }
        ]
      }
    }
  )
}}

select *
from "./data/sales_data.parquet"
