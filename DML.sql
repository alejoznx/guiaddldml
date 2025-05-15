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
    
    SELECT codigo FROM productos;
    
    SELECT distinct codigo_fabricante FROM productos;
    
    SELECT nombre FROM fabricante order by nombre asc;
    
    SELECT nombre FROM fabricante order by nombre desc;
    
    SELECT nombre FROM productos order by nombre asc;
    
    SELECT precio FROM productos order by precio desc;
    
    SELECT * FROM fabricante limit 5;
    
    SELECT * FROM fabricante limit 3,2;
    
    SELECT nombre, precio FROM productos order by precio asc limit 1;
    
    SELECT nombre, precio FROM productos order by precio desc limit 1;
    
    SELECT nombre FROM productos WHERE codigo_fabricante = 2;
    
    SELECT nombre FROM productos WHERE precio <=120;
    
    SELECT nombre FROM productos WHERE precio >400;
    
    SELECT nombre FROM productos WHERE precio <=400;
    
    SELECT nombre FROM productos WHERE precio >=80 and precio <=300;
    
    SELECT nombre FROM productos WHERE precio between 60 and 200;
    
    SELECT nombre FROM productos WHERE precio >200 and codigo_fabricante <>6;
    
    SELECT nombre FROM productos WHERE codigo_fabricante = 1 or codigo_fabricante = 3 or codigo_fabricante = 5;
    
    SELECT nombre FROM productos WHERE codigo_fabricante in (1,3,5);
    
    SELECT nombre, precio * 100 as precio_centimos FROM productos;
    
    SELECT nombre FROM fabricante WHERE nombre like 's%';
    
    SELECT nombre FROM fabricante WHERE nombre like '%e';
    
    SELECT nombre FROM fabricante WHERE nombre like '%w%';
    
    SELECT nombre FROM fabricante WHERE length(nombre) = 4;
    
    SELECT nombre FROM productos WHERE nombre like '%Portatil%';
    
    SELECT nombre FROM productos WHERE nombre like '%Monitor%' and precio <215;
    
    SELECT nombre, precio FROM productos WHERE precio >=180 order by precio desc, nombre asc;
    
    
    
    
    
    
    SELECT p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante FROM productos p
    JOIN fabricante f on p.codigo_fabricante = f.codigo;
    
    SELECT p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante FROM productos p
    JOIN fabricante f on p.codigo_fabricante = f.codigo order by  f.nombre asc;
    
    SELECT p.codigo as codigo_producto, p.nombre as nombre_producto, f.codigo as codigo_fabricante, f.nombre as nombre_fabricante from productos p
    JOIN fabricante f on p.codigo_fabricante = f.codigo;
    
    SELECT p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante FROM productos p
    JOIN fabricante f on p.codigo_fabricante = f.codigo order by p.precio asc LIMIT 1;
    
    SELECT p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo order by p.precio DESC limit 1;
    
    SELECT p.nombre as nombre_producto, p.precio FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo';
    
    SELECT p.nombre as nombre_producto, p.precio FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHere f.nombre = 'crucial' and p.precio >200;
    
  SELECT p.nombre as nombre_producto, f.nombre as nombre_fabricante FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHere f.nombre = 'Asus' or f.nombre = 'Hewlett-Packard' or f.nombre = 'Seagate';
    
    SELECT p.nombre as nombre_producto, f.nombre as nombre_fabricante FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHere f.nombre in ('Asus','Hewlett-Packard','Seagate');
    
   SELECT p.nombre as nombre_producto, p.precio FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre regexp '[eE]$';
    
	SELECT p.nombre as nombre_producto, p.precio FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre like '%w%';
    
    SELECT p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE p.precio >=180 order by p.precio desc, 
    p.nombre asc;
    
    SELECT distinct f.codigo, f.nombre FROM fabricante f
    JOIN productos p on f.codigo = p.codigo_fabricante;
    
    
    
    
    
    
    SELECT f.nombre as nombre_fabricante, p.nombre as nombre_producto from fabricante f
    LEFT JOIN productos p on f.codigo = p.codigo_fabricante; 
    
    SELECT f.nombre as nombre_fabricante FROM fabricante f 
    LEFT JOIN productos p on f.codigo = p.codigo_fabricante WHERE p.codigo is null;
    
    
    
    
    
    
    SELECT count(*) as total_productos FROM productos;
    
    SELECT count(*) as total_fabricantes FROM fabricante;
    
    SELECT count(DISTINCT codigo_fabricante) as fabricantes_diferentes_en_productos FROM productos;
    
    SELECT avg (precio) as media_precios FROM productos;
    
    SELECT min(precio) as precio_mas_barato FROM productos;
    
    SELECT max(precio) as precio_mas_caro FROM productos;
    
    SELECT nombre, precio FROM productos ORDER BY precio asc limit 1;
    
    SELECT nombre, precio FROM productos ORDER BY precio desc limit 1;
    
    SELECT sum(precio) as suma_total_precios FROM productos;
    
    
    
    
    
    
    
    
    
    
    
    
    