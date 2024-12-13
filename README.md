# Project-2

## All the following can be found at the following [Jupiter Notebook](https://github.com/janetrodtx/Project-2/blob/main/ETL_Project2_JRodriguez_G_Rajagopalan_CSalinas_S%20Kalami_Oekene.ipynb):

### Created:
* Categoty DataFrame
  * Extract and transform the category data from crowdfunding.xlsx to create a category DataFrame.
The DataFrame will contain a category_id column and a category column, where category_id is a unique identifier.
Export the DataFrame to category_df.csv
* Subcategory DataFrame
* Campaign DataFrame
* Contacts DataFrame

## In the [SQL file](https://github.com/janetrodtx/Project-2/blob/main/ERD/crowdfunding_db_schema.sql) attached, you can find:

### Created:
* Labeling of schema
* Creation of crowdfunding_db
* Appropriate primary and foreign keys
* CSV imported into the table without errors

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
