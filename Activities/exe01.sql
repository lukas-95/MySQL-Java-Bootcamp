CREATE DATABASE db_human_resource;

USE db_human_resource;

CREATE TABLE tb_employees(
	id BIGINT AUTO_INCREMENT,
	first_name  VARCHAR(255)NOT NULL,
	age  TINYINT,
	field CHAR(30)NOT NULL,
    salary DECIMAL(10,2),
    PRIMARY KEY (id)
);

INSERT INTO tb_employees (first_name,age,field,salary) VALUES 
("Paul", 33,"Driver",4585.96),
("Walker", 45,"Finance",1853.16), 
("Vin ", 18,"Operations",1359.85), 
("Diesel", 21,"Driver",2348.36),
("Xororó", 65,"Founder",180845.65),
("Xororó", 65,"Founder",1845.65);

SELECT * FROM tb_employees WHERE salary > 2000;
SELECT * FROM tb_employees WHERE salary < 2000;

UPDATE tb_employees SET first_name = "Jr Xororó" WHERE id = 6 ;

SELECT * FROM tb_employees;












