## Overview 

This project demonstrates an end-to-end AWS Data Engineering pipeline built using the Instacart dataset. The pipeline automates data ingestion, transformation, cataloging, and analytics using AWS cloud services.

Raw CSV data is stored in Amazon S3, where S3 event notifications trigger AWS Lambda functions to initiate ETL workflows. AWS Glue performs scalable PySpark-based transformations and converts the data into optimized Parquet format. The transformed datasets are stored back in S3, cataloged using AWS Glue Data Catalog, and queried through Amazon Athena for analytical insights.

The project highlights key data engineering concepts such as serverless ETL processing, event-driven workflows, data lake architecture, schema management, and cloud-native analytics. By leveraging AWS managed services, the pipeline enables efficient processing of large-scale retail data, improves query performance through Parquet optimization, and supports data-driven decision-making by transforming raw transactional data into actionable business insights.

## Services Used 

* **Amazon S3 –** Used as the data lake to store raw Instacart CSV files and transformed Parquet datasets throughout the pipeline.

* **AWS Lambda –** Configured event-driven triggers to automatically initiate ETL workflows when new data files are uploaded to S3.

* **AWS Glue ETL Jobs –** Built and executed PySpark-based ETL jobs to clean, transform, and convert raw CSV data into optimized Parquet format.

* **AWS Glue Data Catalog –** Created and managed metadata tables to organize datasets and make them accessible for querying and analytics.

* **Amazon Athena –** Queried transformed data directly from S3 using SQL to perform serverless analytics and generate business insights.


## Dataset

This project uses the **Instacart Market Basket Analysis** dataset, which contains anonymized customer orders, products, aisles, and department information for analyzing purchasing behavior.

* **Dataset Source:** https://www.kaggle.com/datasets/psparks/instacart-market-basket-analysis
  
**Note: The complete dataset is not included in this repository due to its large size.**

## Project Workflow
```
Data Source (CSV Files)
        ↓
Amazon S3 (Raw Data Lake)
        ↓
S3 Event Notification
        ↓
AWS Lambda Trigger
        ↓
AWS Glue ETL (PySpark Transformations)
        ↓
Amazon S3 (Parquet Transformed Layer)
        ↓
AWS Glue Crawler / Data Catalog
        ↓
Amazon Athena (SQL Analytics)
```
