.PHONY: upload_data deploy_glean

all: ./data/sales_data.parquet run_dbt upload_data deploy_glean

./data/sales_data.parquet:
	python generate_data.py

./data/customers.parquet:
	python generate_customers.py

run_dbt: ./data/sales_data.parquet ./data/customers.parquet
	dbt build

upload_data: run_dbt
	for file in ./data/dbt/*; do glean upload Uploads "$$file"; done

deploy_glean: upload_data
	glean deploy --dbt --no-preview
