-- create a unique user table


CREATE TABLE IF NOT EXISTS users (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name varchar(255) ,
    email varchar(255) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);