
-- Creates a user database table:

CREATE TABLE user(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    hobbies TEXT, 
    active BOOLEAN NOT NULL DEFAULT 1
);

-- create a vehicle_type table

CREATE TABLE vehicle_type (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description VARCHAR(64)
);

-- Create a vehicle table:

CREATE TABLE vehicle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    color VARCHAR(45) NOT NULL,
    license_plate VARCHAR(45) NOT NULL,
    v_type INTEGER NOT NULL,
    owner_id INTEGER NOT NULL,
    active BOOLEAN DEFAULT 1,
    FOREIGN KEY (v_type) REFERENCES vehicle_type(id),
    FOREIGN KEY (owner_id) REFERENCES user(id)
);

-- Insert some dummy data:
INSERT INTO user (
    first_name,
    last_name,
    hobbies,
    
) VALUES (
    "Fernando",
    "Iribe",
    "Jiu jitsu"
    
);

INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Jack",
    "Brown",
    "Hiking"
);

INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Dave",
    "Mess",
    "Rock Climbing"
);

-- Create dummy data for vehicle types

INSERT INTO vehicle_type (description) ('Car')
INSERT INTO vehicle_type (description) ('Truck')
INSERT INTO vehicle_type (description) ('SUV')
INSERT INTO vehicle_type (description) ('Motorcyle')
INSERT INTO vehicle_type (description) ('Van')

INSERT INTO vehicle (
    color, 
    license_plate,
    v_type,
    owner_id
) VALUES (
    "red",
    "Hell01",
    1,
    1
);

INSERT INTO vehicle (
    color, 
    license_plate,
    v_type,
    owner_id
) VALUES (
    "purple",
    "HELLOWORLD",
    2,
    2
);

INSERT INTO vehicle (
    color, 
    license_plate,
    v_type,
    owner_id
) VALUES (
    "black",
    "HELLOWORLD2",
    3,
    2
);