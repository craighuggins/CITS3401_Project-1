# CITS3401_Project-1
The design and implementation of a data warehouse built from a real-world dataset.

## Dataset 
### US Adult Income
US Adult Census data relating income to social factors such as Age, Education, race etc.

The Us Adult income dataset was extracted by Barry Becker from the 1994 US Census Database. The data set consists of anonymous information such as occupation, age, native country, race, capital gain, capital loss, education, work class and more.

Available from: https://www.kaggle.com/johnolafenwa/us-census-data


## Files
### SQL Script files
These files build and populate the database


### Dimension Tables
CSV files to populate the dimension tables in the Data Warehouse


### ETL Data Transformation
Supplementary CSV files used for the ETL process. Please see the document **ETL Process Description.pdf** for more details


### ETL Process Description.pdf
Description of the ETL process for data transformation with code or screenshots


### Fact Table
Contains the US Adult Income dataset after ETL processing. In this state, it is ready to be populate the fact table in the Data Warehouse


### Power BI files
The Power BI report file (.pbix) along with a PDF export of the report.
The report contains the following:
- Outline of the dimensions and measures

- Business queries that our data warehouse can answer

- StarNet diagram to identify the dimensions and concept heirarchies for each dimension

- StarNet footprints to illustrate how the business queries can be answered with my design

- Star Schema for the Data Warehouse design

- Visualisations and analysis to answer the business queries
