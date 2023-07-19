import pandas as pd
from faker import Faker

# Initialize the Faker generator
fake = Faker()

# Step 1: Load the Parquet file
parquet_file_path = "./data/sales_data.parquet"
df = pd.read_parquet(parquet_file_path)

# Step 2: Extract the unique customer IDs
customer_ids = df["Customer ID"].unique()

# Step 3: Create the customers table
customers_table = pd.DataFrame(
    columns=["Customer ID", "Name", "Address", "Phone Number"]
)

# Step 4: Populate the customers table
for customer_id in customer_ids:
    # Generate fake customer information
    name = fake.name()
    address = fake.address().replace("\n", ", ")
    phone_number = fake.phone_number()

    # Step 5: Insert customer data into the customers table
    customers_table = customers_table.append(
        {
            "Customer ID": customer_id,
            "Name": name,
            "Address": address,
            "Phone Number": phone_number,
        },
        ignore_index=True,
    )

# Step 6: Write the customers table to a Parquet file
output_parquet_file_path = "./data/customers.parquet"
customers_table.to_parquet(output_parquet_file_path, index=False)
