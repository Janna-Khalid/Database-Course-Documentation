# Database Course Documentation

## Table of Contents

1. [Flat File Systems vs Relational Databases](#1-flat-file-systems-vs-relational-databases)
2. [DBMS Advantages – Mind Map](#2-dbms-advantages--mind-map)
3. [Roles in a Database System](#3-roles-in-a-database-system)
4. [Types of Databases](#4-types-of-databases)
5. [Cloud Storage and Databases](#5-cloud-storage-and-databases)

## 1. Flat File Systems vs Relational Databases

| Feature           | Flat File Systems                    | Relational Databases                      |
|------------------|--------------------------------------|-------------------------------------------|
| **Structure**     | Simple text or spreadsheet files     | Tables with rows and columns              |
| **Data Redundancy** | High due to repetition             | Low due to normalization                  |
| **Relationships** | Not supported                        | Foreign keys and joins support            |
| **Example Usage** | CSV files, Excel                     | MySQL, PostgreSQL, Oracle                 |
| **Drawbacks**     | Inefficient, lacks data integrity    | Complex design, requires expertise        |


## 2. DBMS Advantages – Mind Map

A visual mind map showcasing the advantages of using a **Database Management System (DBMS)**.

![alt text](<Database Management System (DBMS) - visual selection.png>)

## 3. Roles in a Database System

- **System Analyst**: Gathers business requirements and translates them into technical needs.
- **Database Designer**: Designs database schema and models based on the requirements.
- **Database Developer**: Implements and programs database functionality.
- **Database Administrator (DBA)**: Manages and maintains the database environment.
- **Application Developer**: Develops front-end/back-end applications interacting with the database.
- **BI Developer**: Builds reports, dashboards, and handles data analytics.

---

## 4. Types of Databases

- **Relational Databases**:
  - Structured, uses SQL.
  - Examples: MySQL, Oracle.
- **Non-Relational Databases**:
  - Flexible, schema-less.
  - Examples: MongoDB, Cassandra.

### Other Types:
- **Centralized Databases**: All data stored in one location.
- **Distributed Databases**: Data distributed across multiple locations.
- **Cloud Databases**: Hosted on cloud platforms (e.g., Azure, AWS).

## 5. Cloud Storage and Databases

### What is Cloud Storage?

Cloud storage is a **service model** where data is stored on **remote servers** accessed via the internet. In the context of databases, cloud storage provides the **underlying infrastructure** that supports database functionality through:

- **Persistent Storage**: Ensures data durability and availability  
- **Scalable Resources**: Automatically adjusts storage capacity based on demand  
- **Redundancy**: Maintains multiple copies of data across different locations  
- **Accessibility**: Global access to data from anywhere with internet connectivity  

---

### Cloud-Based Database Advantages

#### Scalability
- Automatic scaling based on demand  
- No need for upfront hardware investment  
- Pay-as-you-grow pricing models  

#### Cost Efficiency
- Reduced infrastructure and maintenance costs  
- No need for dedicated IT staff for hardware management  
- Operational expenses instead of capital expenses  

#### Managed Services
- Automated backups and updates  
- Built-in monitoring and alerting  
- Professional support and maintenance  

#### Global Accessibility
- Access from anywhere with internet connection  
- Multi-region deployment capabilities  
- Built-in disaster recovery options  

#### Performance
- High-speed networks and optimized infrastructure  
- Content delivery networks (CDNs) for faster access  
- Advanced caching mechanisms  

---

### Popular Cloud Database Services

| **Service**           | **Provider**     | **Type**     | **Key Features**                                          |
|------------------------|------------------|--------------|------------------------------------------------------------|
| Azure SQL Database     | Microsoft         | Relational   | Intelligent performance, automatic tuning                 |
| Amazon RDS             | AWS               | Relational   | Multi-engine support, automated backups                   |
| Google Cloud Spanner   | Google            | Relational   | Global consistency, horizontal scaling                    |
| MongoDB Atlas          | MongoDB           | NoSQL        | Document database, fully managed                          |
| Amazon DynamoDB        | AWS               | NoSQL        | Key-value store, serverless                               |

---


### Cloud Database Challenges

#### Security Concerns
- Data sovereignty and compliance issues  
- Shared responsibility model complexity  
- Potential for data breaches in cloud environments  

#### Internet Dependency
- Reliance on internet connectivity  
- Potential latency issues for real-time applications  
- Bandwidth limitations for large data transfers  

#### Cost Management
- Unpredictable costs with usage-based pricing  
- Potential for bill shock with rapid scaling  
- Complex pricing models difficult to understand  

#### Vendor Lock-in
- Difficulty migrating between cloud providers  
- Proprietary features creating dependencies  
- Limited portability of applications and data  

#### Performance Variability
- Shared infrastructure can impact performance  
- Distance from data centers affects latency  
- Less control over hardware optimization