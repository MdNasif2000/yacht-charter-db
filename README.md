# Yacht Charter Database — Course Project

**Author:** Md Nasif  
**Module:** Introduction to Database   

## Project summary
A web/database system design and implementation for a yacht charter company. The project includes:
- relational schema (ER diagram + SQL DDL)
- data (seed)
- Jupyter notebook with business queries and analysis
- data cleaning & exports (xlsx)

## Repo structure

yacht-charter-db/                                                                                                                                                                                                                                                             
│                                                                                                                                                                                                                                                                             
├─ data/                                                                                                                                                                                                                                                                     
│  ├─ raw/                                                                                                                                                                                                                                                                    
│  │  └─ YachtCharterData.xlsx                                                                                                                                                                                                                                                
│  ├─ cleaned/                                                                                                                                                                                                                                                                
│     └─ charters_cleaned.xlsx                                                                                                                                                                                                                                                
│     └─ combined_cleaned.xlsx                                                                                                                                                                                                                                                
│     └─ customers_cleaned.xlsx                                                                                                                                                                                                                                            
│     └─ ports_cleaned.xlsx                                                                                                                                                                                                                                                
│     └─ visits_cleaned.xlsx                                                                                                                                                                                                                                                
│     └─ yachts_cleaned.xlsx                                                                                                                                                                                                                                                
│                                                                                                                                                                                                                                                                            
├─ diagrams/                                                                                                                                                                                                                                                                
│  └─ er_diagram.png                                                                                                                                                                                                                                                        
|                                                                                                                                                                                                                                                                            
├─ docs/                                                                                                                                                                                                                                                                    
│  └─ screenshots/                                                                                                                                                                                                                                                        
│     └─ [screenshots of output]                                                                                                                                                                                                                                            
│  └─ justification_and_explanation.pdf                                                                                                                                                                                                                                    
│  └─ project_brief.pdf                                                                                                                                                                                                                                                    
│                                                                                                                                                                                                                                                                            
├─ notebooks/                                                                                                                                                                                                                                                                
│  ├─ business_queries.html                                                                                                                                                                                                                                                
│  └─ business_queries.ipynb                                                                                                                                                                                                                                                
|                                                                                                                                                                                                                                                                            
├─ sql/                                                                                                                                                                                                                                                                    
│  └─ schema_and_seed.sql                                                                                                                                                                                                                                                    
│                                                                                                                                                                                                                                                                            
├─ docs/                                                                                                                                                                                                                                                                    
│  └─ screenshots/                                                                                                                                                                                                                                                            
│     └─ [screenshots of output]                                                                                                                                                                                                                                            
│  └─ justification_and_explanation.pdf                                                                                                                                                                                                                                    
│  └─ project_brief.pdf                                                                                                                                                                                                                                                    
│                                                                                                                                                                                                                                                                            
├─ .gitignore                                                                                                                                                                                                                                                              
├─ LICENSE                                                                                                                                                                                                                                                                    
├─ README.md                                                                                                                                                                                                                                                                  

## Technologies Used
- **Database:** MySQL 8.0+
- **SQL Scripts:** Schema creation, data seeding, and utility queries
- **Optional Tools:** MySQL Workbench or any MySQL client

## How to run 
### Use Local MySQL

1. **Create the database and import schema**:

### Open your MySQL client and run:
    CREATE DATABASE IF NOT EXISTS YACHT_CHARTER_BUSINESS;
    USE YACHT_CHARTER_BUSINESS;
    SOURCE sql/schema_and_seed.sql;

### Verify the tables and data:
    SHOW TABLES;
