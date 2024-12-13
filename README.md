# Project-2

## All the following can be found at the following [Jupiter Notebook](https://github.com/janetrodtx/Project-2/blob/main/ETL_Project2_JRodriguez_G_Rajagopalan_CSalinas_S%20Kalami_Oekene.ipynb):

### Created:
* Categoty DataFrame:
  * Extract and transform the category data from crowdfunding.xlsx to create a category DataFrame.
The DataFrame will contain a category_id column and a category column, where category_id is a unique identifier.
Export the DataFrame to category_df.csv
* Subcategory DataFrame:
  * Extract and transform the subcategory data from crowdfunding.xlsx to create a subcategory DataFrame.
The DataFrame will contain a subcategory_id column and a subcategory column.
Export the DataFrame to subcategory_df.csv
* Campaign DataFrame:
  * Extract and transform the campaign data from crowdfunding.xlsx to create a campaign DataFrame with relevant columns like cf_id, contact_id, company_name, goal, pledged, category_id, subcategory_id, etc.
The DataFrame will also include transformed columns like goal and pledged as floats, and launch_date and end_date as datetime types.
Export the DataFrame to campaign_cleaned.csv
* Contacts DataFrame:
  * Option 1 (Python Dictionary Methods):
Load contacts.xlsx into a DataFrame.
Convert each row into a dictionary and extract the necessary data for the contact_id, name, and email columns.
Split the name column into first_name and last_name columns.
Export the transformed data to contacts_clean.csv
  * Option 2 (Regular Expressions):
Load contacts.xlsx into a DataFrame.
Use regular expressions to extract contact_id, name, and email.
Split the name column and clean the DataFrame before exporting to contacts_regex.csv

## In the [SQL file](https://github.com/janetrodtx/Project-2/blob/main/ERD/crowdfunding_db_schema.sql) attached, you can find:

### Created:
* Labeling of schema:
  * ERD Created at this point with the following [text](https://github.com/janetrodtx/Project-2/blob/main/ERD/QuickDBD_Schema.txt).
  * ERD is viewable [here](https://github.com/janetrodtx/Project-2/blob/main/ERD/Schema_QuickDBD.JPG).
* Creation of crowdfunding_db:
  * Database Schema was created to define tables for each CSV file.
* Appropriate primary and foreign keys:
  * The tables for each CSV file with its correct specification was created.
* CSV imported into the table without errors:
  * Data is viewable in the queries below.

Data display:
```pgsql
SELECT * FROM campaign;
```

```pgsql
SELECT * FROM contacts_regex;
```

```pgsql
SELECT * FROM category_df;
```

```pgsql
SELECT * FROM subcategory_df;
```
