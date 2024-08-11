CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

CREATE TABLE IF NOT EXISTS posts (
    id varchar(255),
    title varchar(255),
    content varchar(255),
    published boolean,
    tags varchar(255)
);
