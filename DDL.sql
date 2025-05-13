DROP DATABASE IF EXISTS homework;
CREATE database homework;
USE homework;

CREATE TABLE fabricante(
	codigo INT(10)  NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100),
    PRIMARY KEY (codigo)
    );

CREATE TABLE productos(
	codigo INT(10)  NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio DOUBLE,
    codigo_fabricante INT(10),
    PRIMARY KEY(codigo),
    CONSTRAINT fk_fabricante FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
    );
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    

