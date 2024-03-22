-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Campaign" (
    "CF_ID" int   NOT NULL,
    "Contact_ID" int   NOT NULL,
    "Company_Name" varchar(255)   NOT NULL,
    "Description" varchar(255)   NOT NULL,
    "Goal" decimal   NOT NULL,
    "Pledged" decimal   NOT NULL,
    "Outcome" varchar(255)   NOT NULL,
    "Backers_count" int   NOT NULL,
    "country" varchar(255)   NOT NULL,
    "currency" varchar(255)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(255)   NOT NULL,
    "sub_category_id" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "CF_ID"
     )
);

CREATE TABLE "sub_category" (
    "sub_category_id" varchar(255)   NOT NULL,
    "sub_category" varchar(255)   NOT NULL,
    CONSTRAINT "pk_sub_category" PRIMARY KEY (
        "sub_category_id"
     )
);

CREATE TABLE "category" (
    "category_id" varchar(255)   NOT NULL,
    "category" varchar(255)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "last_name" varchar(255)   NOT NULL,
    "email" varchar(255)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Contact_ID" FOREIGN KEY("Contact_ID")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_sub_category_id" FOREIGN KEY("sub_category_id")
REFERENCES "sub_category" ("sub_category_id");

