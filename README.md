# Olympic Data Analytics | Azure End-to-End Data Engineering Project
## 📌 Project Overview

This project demonstrates an end-to-end data engineering pipeline on Microsoft Azure using Olympic Games data. The objective is to ingest raw data, perform large-scale transformations using Apache Spark, store curated datasets in Azure Data Lake, and enable analytics using Azure Synapse Lake Database (Serverless SQL).

## 🛠️ Technologies Used

- Azure Data Factory (ADF) – Data ingestion & orchestration

- Azure Data Lake Storage Gen2 (ADLS) – Raw, Processed, Curated layers

- Azure Databricks – Data transformation using PySpark

- Apache Spark – Distributed data processing

- Azure Synapse Analytics (Serverless SQL) – Lake Database & analytics

- SQL / PySpark

## 🏗️ Architecture

## End-to-End Flow:

Azure Data Factory → Azure Data Lake (Raw) → Azure Databricks (Transformations) → Azure Data Lake (Curated) → Azure Synapse Lake Database

This architecture enables querying data directly from the Data Lake without loading it into a dedicated SQL pool.


## 📂 Repository Structure
olympic-data-analytics-azure-end-to-end/
│
├── data/
│ ├── raw/
│ ├── processed/
│ └── curated/
│
├── adf/
│ └── pipelines/
│
├── databricks/
│ └── notebooks/
│
├── synapse/
│ └── lake_database/
│
├── architecture/
│ └── architecture_diagram.png
│
├── screenshots/
│
└── README.md

## 🚀 How to Run This Project

- Upload Olympic dataset to Azure Data Lake

- Configure and execute Azure Data Factory ingestion pipeline

- Run Databricks notebooks to transform data and write curated datasets

- Create Synapse Lake Database tables referencing curated data

- Query data using Synapse serverless SQL

