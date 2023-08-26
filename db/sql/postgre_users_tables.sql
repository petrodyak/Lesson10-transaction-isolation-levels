
DROP TABLE IF EXISTS users;
CREATE TABLE users(
               id INT PRIMARY KEY,
                name VARCHAR(100) NOT NULL,
                date_of_birth DATE NOT NULL
            );