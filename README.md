# Project 2: ETL Challenge

This project was completed by Tasneem Bhaijee and Hung Nguyen

## Project Objectives: 
Extract, transform and load data to answer below questions:
* Literacy rate impact on suicide rate in European countries
* Literacy rate, adult total (% of people ages 15 and above) on suicide rate

The database schema was defined using https://app.quickdatabasediagrams.com as follows:

![alt text](https://github.com/tbhaijee/project_two/blob/master/SQL%20Files/QuickDBD-ETL_project.png)

## EXTRACT

First the following 2 data sources were loaded. Csv files can be found in the Resources folder

* edat_lfse_03_1_Data.csv - Data source: https://data.worldbank.org/indicator/SE.ADT.LITR.ZS

* master.csv - Data source: https://www.kaggle.com/russellyates88/suicide-rates-overview-1985-to-2016?select=master.csv


## TRANSFORM

* Remove all unnecessary columns, only keep relevant information regarding country, year, sex, age group and suicide rate

* Perform cleanup on literacy data, remove irrelevant columns and records with null values

* Group literacy rate by country, then by year using melt() function

* Get unique country, sex, year values from master file using unique() function

* Count country, year values using len() function

* Export output data to csv files for loading into PostgreSQL database

## LOAD
* Tables were defined and created in PostgreSQL database

* Load data using output csv files for suicide and literacy information from Pandas

* Join data from suicide table and literacy table

* Perform queries and get insights from resulting data

__The following images detail the whole ETL process:__

![alt text](https://github.com/tbhaijee/project_two/blob/master/Images/image1.png)

![alt text](https://github.com/tbhaijee/project_two/blob/master/Images/image2.png)

![alt text](https://github.com/tbhaijee/project_two/blob/master/Images/image3.png)
