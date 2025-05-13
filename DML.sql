USE homework;


CALL insertar_fabricante("Asus");
CALL insertar_fabricante("Lenovo");
CALL insertar_fabricante("Hewlett-Packard");
CALL insertar_fabricante("Samsung");
CALL insertar_fabricante("Seagate");
CALL insertar_fabricante("Crucial");
CALL insertar_fabricante("Gigabyte");
CALL insertar_fabricante("Huawei");
CALL insertar_fabricante("Xiaomi");


CALL insertar_producto("Disco duro SATA3 1TB",86.99,5);
CALL insertar_producto("Memoria RAM DDR4 8GB",120,6);
CALL insertar_producto("Disco SSD 1TB",150.99,4);
CALL insertar_producto("GeForce GTX 1050Ti",185,7);
CALL insertar_producto("GeForce GTX 1080 Xtreme",755,6);
CALL insertar_producto("Monitor 24 LED FULL HD",202,1);
CALL insertar_producto("Monitor 27 LED FULL HD",245.99,1);
CALL insertar_producto("Portatil Yoga 520",559,2);
CALL insertar_producto("Portatil Ideapad 320",444,2);
CALL insertar_producto("Impresora HP Deskjet 3720",59.99,3);
CALL insertar_producto("Impresora HP laserjet PRO M26nw",180,3);



    SELECT nombre FROM productos;
    
    SELECT nombre, precio
    FROM productos;
    
    SELECT * FROM productos;
    
    SELECT nombre, precio AS euros, precio * 1.1 AS usd FROM productos;
    
    SELECT nombre AS "nombre de producto", precio AS euros, precio * 1.1 AS dolares FROM productos; 
    
    SELECT UPPER(nombre) AS NOMBRE, PRECIO FROM productos;
    
    SELECT LOWER(nombre) AS nombre, precio FROM productos;
    
    SELECT nombre, upper(SUBSTR(nombre,1,2)) AS iniciales FROM productos;
    
    SELECT nombre, ROUND(precio) AS precio_redondeado FROM productos;
    
    SELECT nombre, truncate(precio,0) AS precio_truncado FROM productos;
    
    
    