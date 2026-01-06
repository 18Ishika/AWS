# AWS


```
# AWS — Airbnb Data Engineering Pipeline (S3 → Snowflake → dbt)

This repository contains an end-to-end modern data engineering pipeline built using:

- AWS S3 for data storage
- Snowflake as the data warehouse
- dbt for data modeling and transformations

The pipeline processes the **Airbnb dataset** consisting of:
- Bookings
- Listings
- Hosts

Data is modeled across **Bronze, Silver, and Gold** layers with preprocessing and an **OBT (One Big Table)** to power analytics and star-schema reporting.

---

## 🚀 Project Architecture (High-Level)

Raw CSV data → Stored in S3  
⬇  
Loaded into Snowflake staging tables  
⬇  
Transformed using dbt into:

- Bronze Layer — Raw structured data
- Silver Layer — Cleaned & preprocessed data
- Gold Layer — Business-ready OBT + Star Schema

---

## 🧱 Data Layers Overview

### 🟤 Bronze Layer (Raw Ingest)

Purpose:
- Store raw ingested data without modification
- Maintain original source format

Includes tables:

- `bronze_bookings`
- `bronze_listings`
- `bronze_hosts`

Actions performed:
- Basic column alignment
- Initial schema mapping

No transformations are applied here.

---

### ⚙️ Silver Layer (Preprocessing & Cleaning)

Purpose:
- Data standardization
- Handling missing / inconsistent values
- Feature engineering where needed

Key preprocessing steps:

- Date formatting & normalization
- Numeric field conversions
- Outlier handling (where applicable)
- Categorical standardization

Example tables:

- `silver_bookings`
- `silver_listings`
- `silver_hosts`

This layer creates **clean, analytics-ready datasets**.

---

### 🟡 Gold Layer (Analytics & Business Layer)

Purpose:
- Create finalized business-ready tables
- Join datasets into a unified analytics model

Includes:

####  OBT — One Big Table

The OBT joins:

- Bookings
- Listings
- Hosts

Used to derive:

- Revenue metrics
- Accommodation attributes
- Host performance insights
- Booking-level analytics

#### ⭐ Star Schema (Derived from OBT)

Dimensions / Facts created from OBT:

- `dim_listings`
- `dim_hosts`
- `dim_date`
- `fact_bookings`

Designed for:

- BI dashboards
- Aggregation queries
- Fast analytical workloads

---

## 🧩 Dataset Used — Airbnb Data

Tables utilized:

- Bookings
- Listings
- Hosts

These datasets help analyze:

- guest behavior
- property characteristics
- revenue patterns
- host performance

---

## 🛠️ Tools & Technologies

| Component | Technology |
|---------|----------|
| Storage | AWS S3 |
| Warehouse | Snowflake |
| Transformation | dbt |
| Data Modeling | Bronze / Silver / Gold |
| Final Outputs | OBT + Star Schema |



## 🎯 Key Outcomes

This project demonstrates:

- Modern data warehouse design
- Medallion architecture principles
- ETL → ELT migration practice
- Analytics-oriented data modeling
- Building reusable dbt transformations
- Creating business-ready datasets

---
```


Just tell me what you’d like to include next 🙂
