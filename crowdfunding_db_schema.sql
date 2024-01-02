/*  Creating the table for category; setting primary key   */
CREATE TABLE category (
    category_id VARCHAR (5) NOT NULL,
	category VARCHAR (30) NOT NULL,
    PRIMARY KEY (category_id)
);

/*  Verifying Category table created as expected.  */
select * from category;

/*  Creating the table for subcategory; setting primary key   */
CREATE TABLE subcategory (
    subcategory_id VARCHAR (8) NOT NULL,
	subcategory VARCHAR (30) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

/*  Verifying SubCategory table created as expected.  */
select * from subcategory;

/*  Creating the table for Contacts; setting primary keys.   */
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (contact_id)
);

/*  Verifying Contacts table created as expected.  */
select * from contacts;


/*  Creating the table for Campaign; setting primary and foreign keys.   */
CREATE TABLE campaign (
    cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR (60) NOT NULL,
	description VARCHAR (100) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR (15) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR (2) NOT NULL,
	currency VARCHAR (3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
    category_id VARCHAR (5) NOT NULL,
    subcategory_id VARCHAR (8) NOT NULL,	
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

/*  Verifying Campaign table created as expected.  */
select * from campaign;


/*  Verifying information imported correctly for all tables created as expected.  */
/*  Category table should have imported 9 records  */
select * from category

/*  Subcategory table should have imported 24 records  */
select * from subcategory

/*  Contacts table should have imported 1000 records  */
select * from contacts

/*  Campaign table should have imported 1000 records  */
select * from campaign

