-- create a unique user table
CREATE TABLE IF NOT EXISTS user {
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
}