CREATE TABLE aura_test_table ( id INTEGER PRIMARY KEY AUTOINCREMENT ,name VARCHAR(50) NOT NULL ,test_size_scale NUMERIC(7,3) ,test_default_null CHAR(3) DEFAULT NULL ,test_default_string VARCHAR(7) DEFAULT 'string' ,test_default_number NUMERIC(5) DEFAULT 12345 ,test_default_ignore TIMESTAMP DEFAULT CURRENT_TIMESTAMP )
CREATE TABLE aura_test_table ( id SERIAL PRIMARY KEY ,name VARCHAR(50) NOT NULL ,test_size_scale NUMERIC(7,3) ,test_default_null CHAR(3) DEFAULT NULL ,test_default_string VARCHAR(7) DEFAULT 'string' ,test_default_number NUMERIC(5) DEFAULT 12345 ,test_default_ignore TIMESTAMP DEFAULT CURRENT_TIMESTAMP )
SELECT name FROM sysobjects WHERE type = 'U' ORDER BY name
CREATE TABLE aura_test_table ( id INTEGER AUTO_INCREMENT PRIMARY KEY ,name VARCHAR(50) NOT NULL ,test_size_scale NUMERIC(7,3) ,test_default_null CHAR(3) DEFAULT NULL ,test_default_string VARCHAR(7) DEFAULT 'string' ,test_default_number NUMERIC(5) DEFAULT 12345 ,test_default_ignore TIMESTAMP DEFAULT CURRENT_TIMESTAMP )
