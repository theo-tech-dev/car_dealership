
-- Create the Salesperson table
CREATE TABLE Salesperson (
    salesperson_id INT PRIMARY KEY,
    name VARCHAR(255),
    contact info VARCHAR
    employee_id INTEGER
    -- other relevant columns
);

-- Create the Cars table
CREATE TABLE Cars (
    car_id INT PRIMARY KEY,
    serial_number VARCHAR(255) UNIQUE,
    make VARCHAR(255),
    model VARCHAR(255),
    year INTEGER
    vin CHAR(15)
    color VARCHAR
    mileage INTEGER
	engine	VARCHAR
	price DECIMAL
	availability VARCHAR
  
);

-- Create the Customer table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    contact info VARCHAR(255)
    dob DATE
    gender VARCHAR
    occupation VARCHAR
    purchase history VARCHAR
    preferences VARCHAR
    
);


-- Create the Services table ServiceTicket table with foreign key constraints
CREATE TABLE Services (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    car_id INT,
    -- other relevant columns
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
);


-- Create the ServiceHistory table with foreign key constraints
CREATE TABLE ServiceHistory (
    history_id INT PRIMARY KEY,
    car_id INT,
    service_details TEXT,
    mechanic_id INT,
    -- other relevant columns
    FOREIGN KEY (car_id) REFERENCES Car(car_id),
    FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
);

-- Create the Inventory table
CREATE TABLE Inventory
	car_id INT
	field INT
	quantity avail INT
	location VARCHAR
	date received DATE
	purchase price DECIMAL
	selling price DECIMAL
	condition VARCHAR
	
-- Insert data into the Cars table
INSERT INTO Cars (car_id, serial_number, make, model)
VALUES (1, 'ABC123', 'Toyota', 'Camry');

INSERT INTO Cars (car_id, serial_number, make, model)
VALUES (2, 'XYZ789', 'Honda', 'Accord');

-- Insert data into the Inventory table
INSERT INTO Inventory (car_id, quantity, price)
VALUES (1, 5, 25000.00);

INSERT INTO Inventory (car_id, quantity, price)
VALUES (2, 3, 28000.00);

-- Insert data into the Customer table
INSERT INTO Customer (customer_id, name)
VALUES (1, 'Alice Smith');

INSERT INTO Customer (customer_id, name)
VALUES (2, 'Bob Johnson');

	