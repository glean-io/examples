# Glean Marketing and Retail example using dbt + duckdb

[Glean](https://glean.io) supports defining models, views, and dashboards as code, which can then be deployed to your project using [DataOps](https://docs.glean.io/docs/data-ops/). This repository contains some examples to help you get started. You can see and explore a live demo of these resources at: https://demo.glean.io

## Usage

```bash
git clone https://github.com/glean-io/examples.git

cd examples/04_retail_marketing

# with python 2.9+
pip install -r requirements.txt

# you need to get your authorization key setup locally
# see docs here: https://docs.glean.io/docs/data-ops/cli#1-create-an-access-key

# you can run all of the below step just with make:
make -B

# generate synthetic data:
python generate_data.py
python generate_customers.py
python generate_marketing.py

# run dbt
dbt build

# you can upload the files in data manually, or progromatically
for file in ./data/dbt/*; do glean upload Uploads "$$file"; done

# deploy to glean (this will modify your project):
hb deploy --dbt --no-preview
```
