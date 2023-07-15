.PHONY: generate_data upload_data deploy_glean

all: ./data/sales_data.parquet target/manifest.json upload_data deploy_glean

./data/sales_data.parquet:
	python generate_data.py

target/manifest.json: ./data/sales_data.parquet
	dbt run

/data/dbt/*:
	for file in ./data/dbt/*; do glean upload Uploads "$$file"; done

deploy_glean:
	glean deploy --dbt --no-preview
