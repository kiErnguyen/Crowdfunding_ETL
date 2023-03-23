CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" TEXT   NOT NULL,
    "description" TEXT   NOT NULL,
    "goal" NUMERIC   NOT NULL,
    "pledged" NUMERIC   NOT NULL,
    "outcome" TEXT   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" TEXT   NOT NULL,
    "currency" TEXT   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" TEXT   NOT NULL,
    "subcategory_id" TEXT   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" TEXT   NOT NULL,
    "last_name" TEXT   NOT NULL,
    "email" TEXT   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_id" TEXT   NOT NULL,
    "category_name" TEXT   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" TEXT   NOT NULL,
    "subcategory_name" TEXT   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");