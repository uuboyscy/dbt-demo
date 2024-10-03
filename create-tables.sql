-- Create schemas
CREATE SCHEMA IF NOT EXISTS raw;

-- Create table user_source_1
CREATE TABLE raw.user_source_1 (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    email VARCHAR(100),
    created_at TIMESTAMP
);

INSERT INTO raw.user_source_1 (user_id, user_name, email, created_at)
VALUES
(1, 'Alice', 'alice@example.com', '2023-01-01 10:00:00'),
(2, 'Bob', 'bob@example.com', '2023-02-01 11:00:00');

-- Create table user_source_2
CREATE TABLE raw.user_source_2 (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    email VARCHAR(100),
    created_at TIMESTAMP
);

INSERT INTO raw.user_source_2 (user_id, user_name, email, created_at)
VALUES
(3, 'Charlie', 'charlie@example.com', '2023-03-01 12:00:00'),
(4, 'David', 'david@example.com', '2023-04-01 13:00:00');

-- Create table user_event_source_1
CREATE TABLE raw.user_event_source_1 (
    event_id INT PRIMARY KEY,
    user_id INT,
    event_type VARCHAR(100),
    event_time TIMESTAMP
);

INSERT INTO raw.user_event_source_1 (event_id, user_id, event_type, event_time)
VALUES
(1, 1, 'login', '2023-01-01 10:30:00'),
(2, 2, 'purchase', '2023-02-01 11:30:00');

-- Create table user_event_source_2
CREATE TABLE raw.user_event_source_2 (
    event_id INT PRIMARY KEY,
    user_id INT,
    event_type VARCHAR(100),
    event_time TIMESTAMP
);

INSERT INTO raw.user_event_source_2 (event_id, user_id, event_type, event_time)
VALUES
(3, 3, 'logout', '2023-03-01 12:30:00'),
(4, 4, 'login', '2023-04-01 13:30:00');

-- Create table country_source_1
CREATE TABLE raw.country_source_1 (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100)
);

INSERT INTO raw.country_source_1 (country_id, country_name)
VALUES
(1, 'United States'),
(2, 'Canada');

-- Create table country_source_2
CREATE TABLE raw.country_source_2 (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100)
);

INSERT INTO raw.country_source_2 (country_id, country_name)
VALUES
(3, 'Mexico'),
(4, 'Brazil');
