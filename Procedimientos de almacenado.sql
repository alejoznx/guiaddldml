USE `homework`;
DROP procedure IF EXISTS `insertar_fabricante`;

DELIMITER $$
USE `homework`$$
CREATE PROCEDURE insertar_fabricante(IN nombre_fab VARCHAR(100))

BEGIN
INSERT INTO fabricante(nombre) VALUES (nombre_fab);

END$$

DELIMITER ;

USE `homework`;
DROP procedure IF EXISTS `insertar_producto`;

DELIMITER $$
USE `homework`$$
CREATE PROCEDURE insertar_producto  (
IN  nombre_prod VARCHAR(100),
IN  precio_prod Double,
IN  codigo_fab  INT
)
BEGIN
INSERT INTO productos(nombre, precio, codigo_fabricante)
VALUES (nombre_prod, precio_prod, codigo_fab);
END$$

DELIMITER ;


