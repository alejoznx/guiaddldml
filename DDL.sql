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
    
    insert into productos (nombre, precio) values ('rtx 3090', 400);
    -- Si pueden existir productos sin fabricante, ya que no rompe la resticcion de la llave foranea, ya que caundo establecimos la llave foranea no le agregamos 'not null'-- 
    
    
    
    
    
    
    

    
    
    
    

