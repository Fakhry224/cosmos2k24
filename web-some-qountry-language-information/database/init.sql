CREATE DATABASE IF NOT EXISTS `country_simple_mysqli`;

GRANT ALL PRIVILEGES ON country_simple_mysqli.* TO 'mysqliyes'@'%';
FLUSH PRIVILEGES;

USE `country_simple_mysqli`;


CREATE TABLE Languages (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Currencies (
    currency_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    code CHAR(3) NOT NULL UNIQUE, 
    symbol VARCHAR(5)
);

CREATE TABLE Countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    iso_code CHAR(2) NOT NULL UNIQUE, 
    capital VARCHAR(100),
    population BIGINT,
    area_km2 DECIMAL(15,2), 
    currency_id INT,
    language_id INT,
    FOREIGN KEY (currency_id) REFERENCES Currencies(currency_id),
    FOREIGN KEY (language_id) REFERENCES Languages(language_id)
);

-- Sample Data Insertion

-- Insert data into Languages
INSERT INTO Languages (name) VALUES 
    ('English'), 
    ('Spanish'), 
    ('French'), 
    ('Japanese'), 
    ('German'), 
    ('Mandarin'), 
    ('Hindi'), 
    ('Portuguese'), 
    ('Russian'), 
    ('Arabic');

-- Insert data into Currencies
INSERT INTO Currencies (name, code, symbol) VALUES 
    ('United States Dollar', 'USD', '$'),
    ('Euro', 'EUR', '€'),
    ('Japanese Yen', 'JPY', '¥'),
    ('British Pound', 'GBP', '£'),
    ('Australian Dollar', 'AUD', 'A$'),
    ('Canadian Dollar', 'CAD', 'CA$'),
    ('Chinese Yuan', 'CNY', '¥'),
    ('Indian Rupee', 'INR', '₹'),
    ('Brazilian Real', 'BRL', 'R$'),
    ('Russian Ruble', 'RUB', '₽');

-- Insert data into Countries
INSERT INTO Countries (name, iso_code, capital, population, area_km2, currency_id, language_id) VALUES
    ('United States', 'US', 'Washington, D.C.', 331002651, 9833520.00, 1, 1),
    ('Canada', 'CA', 'Ottawa', 37742154, 9984670.00, 6, 1),
    ('Japan', 'JP', 'Tokyo', 126476461, 377975.00, 3, 4),
    ('Germany', 'DE', 'Berlin', 83783942, 357114.00, 2, 5),
    ('France', 'FR', 'Paris', 65273511, 551695.00, 2, 3),
    ('United Kingdom', 'GB', 'London', 67886011, 243610.00, 4, 1),
    ('Australia', 'AU', 'Canberra', 25499884, 7692024.00, 5, 1),
    ('China', 'CN', 'Beijing', 1439323776, 9596961.00, 7, 6),
    ('India', 'IN', 'New Delhi', 1380004385, 3287263.00, 8, 7),
    ('Brazil', 'BR', 'Brasília', 212559417, 8515767.00, 9, 8);

CREATE TABLE apanih (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title TEXT NOT NULL,
    value TEXT NOT NULL
);

CREATE TABLE inimenariknih (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title TEXT NOT NULL,
    value TEXT NOT NULL
);

INSERT INTO apanih (title, value) VALUES
    ('Ini Flag bukan ya???', 'Bukan, Hehehe'),
    ('Zonk', 'Cari apasih kamu tuh'),
    ('ZONK', 'HEHEHE, gaada apa-apa');

INSERT INTO inimenariknih (title, value) VALUES
    ('flag', 'Wow kamu hampir berhasil'),
    ('real flag', 'COSMOS24{W0W_y0u_m4n4g3d_t0_c0nquer_th3_b4s1c_Un10n_sql_1nj3T10N}');