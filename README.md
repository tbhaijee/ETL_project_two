# Project 2: ETL Challenge

_(report writing in progress)_

Members: Tasneem Bhaijee , Hung Nguyen

## Project Objectives: 
Extract, transform and load data to answer below questions:
* Literacy rate impact on suicide rate in European countries
* Literacy rate, adult total (% of people ages 15 and above) on suicide rate

The database schema was defined using https://app.quickdatabasediagrams.com/#/ as follows:

![alt text](https://github.com/tbhaijee/project_two/blob/master/SQL%20Files/QuickDBD-ETL_project.png)

## EXTRACT

First the following 2 data sources were loaded. Csv files can be found in the Resources folder

* edat_lfse_03_1_Data.csv - Data source: kaggle.com

* master.csv - Data source: kaggle.com


## TRANSFORM

* Perform data cleanup, remove all unnecessary columns, only keep Country, Year, Sex, Age and Suicide Rate

* Group literacy rate by country, then by year

* Get unique country, sex, year values from master file using unique() function

* Count country, year values using len() function

## LOAD
* Tables were defined and created in PostgreSQL

* Load data using output csv files from Pandas


