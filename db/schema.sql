DROP DATABASE IF EXISTS employee_trackerdb;
CREATE DATABASE employee_trackerdb;

USE employee_trackerdb;

CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY  NOT NULL,
    
    department_name VARCHAR(30) NOT Null
);


CREATE TABLE role (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id),
    Foreign KEY (department_id) 
    REFERENCES departments(id)
);
CREATE TABLE employee(
    id INT AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id),
    Foreign KEY (role_id)
    REFERENCES role (id)
    ON DELETE CASCADE,
    Foreign KEY (manager_id) 
    REFERENCES employee (id)
);