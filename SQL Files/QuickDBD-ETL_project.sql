-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/gbRZU1
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Country" (
    "ID" int   NOT NULL,
    "CountryName" string   NOT NULL,
    CONSTRAINT "pk_Country" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Age" (
    "ID" int   NOT NULL,
    "agegroup_name" string   NOT NULL,
    CONSTRAINT "pk_Age" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Year" (
    "ID" int   NOT NULL,
    "year" int   NOT NULL,
    CONSTRAINT "pk_Year" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "suicidedata" (
    "countryID" int   NOT NULL,
    "ageID" int   NOT NULL,
    "yearID" int   NOT NULL,
    "sexID" int   NOT NULL,
    "suicude_number" INT   NOT NULL
);

CREATE TABLE "Sex" (
    "ID" int   NOT NULL,
    "Name" string   NOT NULL,
    CONSTRAINT "pk_Sex" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "literacyData" (
    "countryID" int   NOT NULL,
    "yearID" int   NOT NULL,
    "literacy_number" %   NOT NULL
);

ALTER TABLE "suicidedata" ADD CONSTRAINT "fk_suicidedata_countryID" FOREIGN KEY("countryID")
REFERENCES "Country" ("ID");

ALTER TABLE "suicidedata" ADD CONSTRAINT "fk_suicidedata_ageID" FOREIGN KEY("ageID")
REFERENCES "Age" ("ID");

ALTER TABLE "suicidedata" ADD CONSTRAINT "fk_suicidedata_yearID" FOREIGN KEY("yearID")
REFERENCES "Year" ("ID");

ALTER TABLE "suicidedata" ADD CONSTRAINT "fk_suicidedata_sexID" FOREIGN KEY("sexID")
REFERENCES "Sex" ("ID");

ALTER TABLE "literacyData" ADD CONSTRAINT "fk_literacyData_countryID" FOREIGN KEY("countryID")
REFERENCES "Country" ("ID");

ALTER TABLE "literacyData" ADD CONSTRAINT "fk_literacyData_yearID" FOREIGN KEY("yearID")
REFERENCES "Year" ("ID");

