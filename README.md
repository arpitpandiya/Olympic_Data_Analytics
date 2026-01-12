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

End-to-End Flow:

Azure Data Factory → Azure Data Lake (Raw) → Azure Databricks (Transformations) → Azure Data Lake (Curated) → Azure Synapse Lake Database

This architecture enables querying data directly from the Data Lake without loading it into a dedicated SQL pool.

## 🥉 Medallion Architecture (Lakehouse Design)

This project follows the Medallion Architecture to organize data in a structured and scalable manner.

### 🟤 Bronze Layer (Raw)

- Stores original Olympic data ingested from source systems
- Data is stored in its original format

⚪ Silver Layer (Processed)

- Data is cleaned and transformed using Azure Databricks
- Schema enforcement and basic data quality checks are applied

🟡 Gold Layer (Curated)

- Analytics-ready datasets optimized for querying
- Used by Azure Synapse Lake Database for analytics


## 🔄 Data Pipeline Explanation

### 1️⃣ Data Ingestion (Azure Data Factory)
- Azure Data Factory pipelines ingest Olympic datasets from the source
- Data is stored in the Raw (Bronze) layer of Azure Data Lake

### 2️⃣ Data Transformation (Azure Databricks)
- Azure Databricks notebooks use PySpark to clean and transform the data
- Schema enforcement, validation, and basic data quality checks are performed
- Transformed data is written to the Processed (Silver) layer

### 3️⃣ Curated Data Creation (Azure Databricks)
Business-ready, analytics-optimized datasets are created
Data is written to the Curated (Gold) layer.

### 4️⃣ Analytics Layer (Azure Synapse)
- A Lake Database named TokyoOlympicDB is created in Azure Synapse Analytics
- Tables are created directly on top of curated data stored in Azure Data Lake
- Serverless SQL is used for querying without data duplication

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

