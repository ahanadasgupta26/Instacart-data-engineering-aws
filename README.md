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
