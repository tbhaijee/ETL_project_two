# Project 2: ETL Challenge

_(report writing in progress)_

Members: Tasneem Bhaijee , Hung Nguyen

Project Objective: Extract, transform and load data to answer below questions:
* Literacy rate impact on suicide rate in European countries
* Literacy rate, adult total (% of people ages 15 and above) on suicide rate

The database schema was defined quickdatabasediagrams.com as follows:

![alt text](https://github.com/tbhaijee/project_two/blob/master/SQL%20Files/QuickDBD-ETL_project.png)

### EXTRACT

First the following 2 data sources were loaded. Csv files can be found in the Resources folder

edat_lfse_03_1_Data.csv - Data source: kaggle.com
master.csv - Data source: kaggle.com


### TRANSFORM


### LOAD
Since the tables have been precreated in postgreSQL, loading of the data can happen only once (or primary keys will be violated). A test query combining all tables shows it worked correctly.
