# SQL Datawarehouse Project

Welcome to my first SQL warehouse project. This is my first project on my way of pursuing a career in data/business analyst. 

This project demonstrates a comprehensive data data warehousing solution, from building a data warehouse to generating actionable insights. After this, I will also be working on a SQL analytics project that will be completely based on this current data warehouse.

## Data Arhchitecture 
Medallion Architecture is followed for this project, which includes Bronze, Silver, and Gold Layers. 
![image](https://github.com/user-attachments/assets/bd2b4222-4dc9-47ea-bd6f-20c63cbfd056)
1. Bronze layer: Stores data as-is from the source systems. Data is ingested from CSV files into Local MySQL Server
2. Silver layer: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis
3. Gold layer: This layer houses business-ready data modeled into a star schema required for reporting and analysis

## Project Overview 

In this project, I have: 
- Designed a data warehouse: implemented a schema optimized for analytics.
- Built ETL process: Extracted, transformed, and loaded data into the warehouse for reliable reporting.
- Modeled the data: developing fact and dimension tables optimized for analytical queries

## Project Logistics 
- dataset: it contains all the datasets that i used for this project
- docs: all the graphs that visualize the mechanisms of the project
- scripts: all the SQL scripts that i wrote to achieve the ETL process
- test: the SQL scripts that double-checks the quality of each layer of the data warehouse
