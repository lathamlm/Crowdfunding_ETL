-- CREATE CONTACTS TABLE
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL
);

SELECT * FROM contacts;

-- CREATE CATEGORY TABLE
CREATE TABLE category(
	category_id VARCHAR(255) PRIMARY KEY NOT NULL,
	category VARCHAR(255) NOT NULL
);

SELECT * FROM category;

-- CREATE SUBCATEGORY TABLE
CREATE TABLE subcategory(
	subcategory_id VARCHAR(255) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(255) NOT NULL
);

SELECT * FROM subcategory;

-- CREATE CAMPAIGN TABLE
CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT PRIMARY KEY NOT NULL,
	company_name VARCHAR(255) NOT NULL,
	description VARCHAR(255) NOT NULL,
	goal NUMERIC NOT NULL,
	pledged NUMERIC NOT NULL,
	outcome VARCHAR(255) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(255) NOT NULL,
	currency VARCHAR(255) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(255) NOT NULL,
	subcategory_id VARCHAR(255) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

SELECT * FROM campaign;