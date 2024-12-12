-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts_regex;
DROP TABLE IF EXISTS category_df;
DROP TABLE IF EXISTS subcategory_df;

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(20)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(5)   NOT NULL,
    "currency" VARCHAR(5)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(20)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts_regex" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(80)   NOT NULL,
    CONSTRAINT "pk_contacts_regex" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category_df" (
    "category_id" VARCHAR(20)   NOT NULL,
    "category" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_category_df" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory_df" (
    "subcategory_id" VARCHAR(20)   NOT NULL,
    "subcategory" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_subcategory_df" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts_regex" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category_df" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory_df" ("subcategory_id");

