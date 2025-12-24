# AWS Learning Log

## 21/12/25 - IAM

**Topics Learned:**
- IAM (Identity and Access Management) controls **who can access what** in the AWS system.
- Key concepts:
  - **User** – individual identities with credentials.
  - **Groups** – collection of users with shared permissions.
  - **Roles** – temporary access for services or users.
- **MFA (Multi-Factor Authentication)** setup for the root account.
- **Access Keys** – for programmatic access via AWS CLI or SDKs.
- **Different ways to access IAM:**
  - AWS Management Console (GUI)
  - AWS CLI (for local automation)
  - SDKs (for integration with applications)

---

## 22/12/25 - EC2

**Topics Learned:**
- Launched an **EC2 instance** using Linux.
- Installed and configured a **simple Apache web server**.
- Modified server directly on Linux.
- Configured **Security Groups**:
  - Inbound and outbound rules for traffic control.
- Connected remotely to EC2 using **PuTTY/SSH**.
- Learned about **different types of EC2 instances**:
  - General Purpose
  - Compute Optimized
  - Memory Optimized
  - GPU Instances
- Terminated the EC2 instances after practice.
  
## 24/12/25 - S3
**Topics Learned:**
- Amazon S3 (Simple Storage Service) is an object storage service used to store files like images, datasets, logs, and static website content.
-Data is stored inside buckets, and each file is an object with a key, data, and metadata.
- S3 provides different storage classes (Standard, IA, Glacier) to balance cost and access frequency.
- Access is controlled using IAM policies (identity-based) and Bucket policies (resource-based).
- Versioning allows retaining previous versions of files and recovering from accidental deletes/overwrites.
- Block Public Access protects buckets from unintended public exposure (recommended unless hosting a website).
