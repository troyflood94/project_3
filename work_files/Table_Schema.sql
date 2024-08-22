-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
--some of the foreign keys and constraints were worked out after this table creation, the ERD represents the final version.

CREATE TABLE "IMDB" (
    "ID" Int   NOT NULL,
    "title" varchar   NOT NULL,
    "year" varchar   NOT NULL,
    "duration" varchar   NOT NULL,
    "primary_genre" varchar   NOT NULL,
    "rating" decimal   NOT NULL,
    "vote_grouped" varchar   NOT NULL,
    CONSTRAINT "pk_IMDB" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "MoviesOnStreaming" (
    "ID" Int   NOT NULL,
    "title" varchar   NOT NULL,
    "Year" varchar   NOT NULL,
    "Age" varchar   NOT NULL,
    "IMDb" decimal   NOT NULL,
    "primary_genre" varchar   NOT NULL,
    "Netflix" decimal   NOT NULL,
    "Hulu" INT   NOT NULL,
    "PrimeVideo" INT   NOT NULL,
    "DisneyPlus" INT   NOT NULL,
    "Type" INT   NOT NULL,
    "Runtime_Range" varchar   NOT NULL
);

CREATE TABLE "Runtime" (
    "title" varchar   NOT NULL,
    "rating" Decimal   NOT NULL,
    "runtime" decimal   NOT NULL
);

ALTER TABLE "MoviesOnStreaming" ADD CONSTRAINT "fk_MoviesOnStreaming_ID" FOREIGN KEY("ID")
REFERENCES "IMDB" ("ID");

ALTER TABLE "Runtime" ADD CONSTRAINT "fk_Runtime_title" FOREIGN KEY("title")
REFERENCES "MoviesOnStreaming" ("title");

