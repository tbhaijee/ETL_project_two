CREATE TABLE country (
    ID int   NOT NULL,
    countryname VARCHAR(50),
    CONSTRAINT pk_country PRIMARY KEY (
        ID
     )
);

CREATE TABLE age (
    ID int   NOT NULL,
    agegroup_name VARCHAR(30),
    CONSTRAINT pk_age PRIMARY KEY (
        ID
     )
);

CREATE TABLE year (
    ID int   NOT NULL,
    year int   ,
    CONSTRAINT pk_year PRIMARY KEY (
        ID
     )
);

CREATE TABLE suicidedata (
    countryID int   NOT NULL,
    ageID int   NOT NULL,
    yearID int   NOT NULL,
    sexID int   NOT NULL,
    suicude_number INT   NOT NULL
);

CREATE TABLE sex (
    ID int   NOT NULL,
    name VARCHAR(10)   ,
    CONSTRAINT pk_sex PRIMARY KEY (
        ID
     )
);

CREATE TABLE literacydata (
    countryID int   NOT NULL,
    yearID int   ,
    literacy_number FLOAT   NOT NULL
);

ALTER TABLE suicidedata ADD CONSTRAINT fk_suicidedata_countryID FOREIGN KEY(countryID)
REFERENCES country (ID);

ALTER TABLE suicidedata ADD CONSTRAINT fk_suicidedata_ageID FOREIGN KEY(ageID)
REFERENCES age (ID);

ALTER TABLE suicidedata ADD CONSTRAINT fk_suicidedata_yearID FOREIGN KEY(yearID)
REFERENCES year (ID);

ALTER TABLE suicidedata ADD CONSTRAINT fk_suicidedata_sexID FOREIGN KEY(sexID)
REFERENCES sex (ID);

ALTER TABLE literacydata ADD CONSTRAINT fk_literacydata_countryID FOREIGN KEY(countryID)
REFERENCES country (ID);

ALTER TABLE literacydata ADD CONSTRAINT fk_literacydata_yearID FOREIGN KEY(yearID)
REFERENCES year (ID);