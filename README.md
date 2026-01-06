# AWS — Airbnb Data Engineering Pipeline (S3 → Snowflake → dbt)

This repository contains an end-to-end modern data engineering pipeline built using:

- AWS S3 for data storage
- Snowflake as the data warehouse
- dbt for data modeling and transformations

The pipeline processes the **Airbnb dataset** consisting of:

- Bookings
- Listings
- Hosts

Data is modeled across **Bronze, Silver, and Gold layers** with preprocessing and an **OBT (One Big Table)** to power analytics and star-schema reporting.

---

## 🚀 Project Architecture (High-Level)

Raw CSV data → Stored in **AWS S3**  
⬇  
Loaded into **Snowflake staging tables**  
⬇  
Transformed using **dbt** into:

- **Bronze Layer** — Raw structured data  
- **Silver Layer** — Cleaned & preprocessed data  
- **Gold Layer** — Business-ready OBT + Star Schema  

---

## 🧱 Data Layers Overview

### 🟤 Bronze Layer — Raw Ingest

**Purpose**

- Store raw ingested data without modification  
- Maintain original source format

**Tables**

- `bronze_bookings`
- `bronze_listings`
- `bronze_hosts`

**Actions performed**

- Basic column alignment  
- Initial schema mapping  

No transformations are applied here.

---

### ⚙️ Silver Layer — Preprocessing & Cleaning

**Purpose**

- Data standardization  
- Handling missing / inconsistent values  
- Feature engineering where needed  

**Key preprocessing steps**

- Date formatting & normalization  
- Numeric field conversions  
- Outlier handling (where applicable)  
- Categorical standardization  

**Tables**

- `silver_bookings`
- `silver_listings`
- `silver_hosts`

This layer produces **clean, analytics-ready datasets**.

---

### 🟡 Gold Layer — Analytics & Business Layer

**Purpose**

- Create finalized business-ready tables  
- Join datasets into a unified analytics model  

#### 🧮 OBT — One Big Table

OBT combines:

- Bookings  
- Listings  
- Hosts  

Used to derive:

- Revenue metrics  
- Accommodation attributes  
- Host performance insights  
- Booking-level analytics  

---

#### ⭐ Star Schema (Derived from OBT)

**Dimensions & Facts**

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

Supports analysis of:

- Guest behavior  
- Property characteristics  
- Revenue trends  
- Host performance  

---

## 🛠️ Tools & Technologies

| Component        | Technology |
|-----------------|-----------|
| Storage         | AWS S3 |
| Data Warehouse  | Snowflake |
| Transformation  | dbt |
| Modeling        | Bronze / Silver / Gold |
| Final Outputs   | OBT + Star Schema |

---

## 🎯 Key Outcomes

This project demonstrates:

- Modern data warehouse design  
- Medallion architecture principles  
- ETL → ELT migration workflow  
- Analytics-oriented data modeling  
- Reusable dbt transformations  
- Business-ready analytical datasets  


## Lineage of the obt model
<img width="982" height="497" alt="image" src="https://github.com/user-attachments/assets/dcd3fa8b-b58a-4a4b-88b1-e573c497ce72" />


---
