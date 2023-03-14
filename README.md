# Glean project examples

[Glean](https://glean.io) supports defining models, views, and dashboards as code, which can then be deployed to your project using [DataOps](https://docs.glean.io/docs/data-ops/). This repository contains some examples to help you get started. You can see and explore a live demo of these resources at: https://demo.glean.io

## Usage

To get started with DataOps, you'll need:

1. A Glean Demo Project (sign up on the [Glean homepage](https://glean.io) and use the "Import Demo Project" option in the top-left menu after logging in)
2. A Glean [Access Key](https://docs.glean.io/docs/data-ops/Using-the-Glean-CLI/#1-create-an-access-key) for your Demo Project in your local environment

To install the Glean CLI:

```
$ pip install glean-cli
```

To pull this repo locally:

```
$ git clone https://github.com/gleannyc/examples.git
```

To create a Preview Build:

```
$ glean preview (subdirectory)
# Example:
$ glean preview ./01_subscription
```
