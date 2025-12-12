# 🌩️ **Terraform AWS Modular Infrastructure Project**

This project showcases how to build AWS infrastructure using **Terraform modules** in a clean, scalable, and reusable way.
The setup includes a **custom VPC, EC2 instance, S3 bucket, and IAM module** to handle secure access — all automated through Infrastructure-as-Code.

---

## 🚀 **What This Project Deploys**

Using separate Terraform modules, this project creates:

### 🏗️ **1. VPC Module**

* Custom VPC
* Public subnet
* Internet Gateway
* Route table + route associations

### 💻 **2. EC2 Module**

* EC2 instance launched inside the VPC
* User-data script for server setup
* Security group with HTTP/SSH rules

### 📦 **3. S3 Module**

* S3 bucket for storage
* Versioning optional
* Bucket policies can be added

### 🔐 **4. IAM Module**

* IAM user with limited access
* IAM role for EC2 to access S3
* IAM policy attached to role/user
* No hardcoded credentials → secure architecture

✨ All modules are reusable and configurable.

---

## 📁 **Project Structure**

```
.
├── main.tf
├── variables.tf
├── outputs.tf
└── modules/
    ├── vpc/
    ├── ec2/
    ├── s3/
    └── iam/
```

### ✔ `modules/vpc/`

Network setup (VPC, subnets, IGW, routes)

### ✔ `modules/ec2/`

Launch EC2 instance inside VPC

### ✔ `modules/s3/`

Create an S3 bucket

### ✔ `modules/iam/`

Manage IAM users, roles, and policies for secure access

---

## 🛠️ **How to Deploy the Infrastructure**

### 1️⃣ Initialize Terraform

```bash
terraform init
```

### 2️⃣ Preview the changes

```bash
terraform plan
```

### 3️⃣ Deploy to AWS

```bash
terraform apply
```

### 4️⃣ Destroy everything

```bash
terraform destroy
```

---

## 🔑 **Requirements**

* Terraform installed
* AWS CLI configured
* IAM user with EC2, VPC, S3, IAM permissions

---

## 🎯 **Project Purpose**

I built this project to demonstrate:

* Modular Terraform design
* Secure IAM automation
* Real DevOps cloud provisioning
* Reusable Infrastructure-as-Code
* Complete AWS environment creation from scratch

This project is perfect for real-world DevOps workflows and interview demonstrations.

---

## 🌟 **Future Improvements**

* Add private subnets
* Add NAT Gateway
* Add RDS database
* Add Application Load Balancer
* Integrate GitLab CI/CD for full automation
* Deploy Docker application on EC2

---
