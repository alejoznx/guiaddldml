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
    
    SELECT count(*) as productos_asus FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus';
    
    SELECT avg(p.precio) as medio_precio_asus FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus';
    
    SELECT max(p.precio) as precio_maximo ,
		   min(p.precio) as precio_minimo,
           avg(p.precio) as precio_medio,
           count(*) as total_productos FROM productos p 
	JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'Crucial';
    
    SELECT f.nombre as nombre_fabricante, count(p.codigo) as total_productos FROM fabricante f 
    LEFT JOIN productos p on f.codigo = p.codigo_fabricante group by f.codigo, f.nombre order by total_productos desc;
    
    
    SELECT max(p.precio) as precio_maximo ,
		   min(p.precio) as precio_minimo,
           avg(p.precio) as precio_medio
           FROM fabricante f
	JOIN productos p on p.codigo_fabricante = f.codigo group by f.nombre;
    
    
    SELECT f.codigo as codigo_fabricante,
		   max(p.precio) as precio_maximo ,
		   min(p.precio) as precio_minimo,
           avg(p.precio) as precio_medio,
           count(*) as total_productos FROM fabricante f
	JOIN productos p ON  f.codigo = p.codigo_fabricante
    group by f.codigo having avg (p.precio) >200;
    
    
    SELECT f.nombre as nombre_fabricante,
           max(p.precio) as precio_maximo ,
		   min(p.precio) as precio_minimo,
           avg(p.precio) as precio_medio,
           count(*) as total_productos FROM fabricante f
	JOIN productos p ON  f.codigo = p.codigo_fabricante
    group by f.nombre having avg (p.precio) >200; 
    
    SELECT count(p.codigo) as total_producto FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE p.precio >=180;
    
    SELECT f.nombre, count(*) as cantidad FROM fabricante f 
    JOIN productos p on f.codigo = p.codigo_fabricante WHERE p.precio >=180 group by f.nombre;
    
    SELECT f.codigo as codigo_fabricante, avg (p.precio) as precio_medio FROM fabricante f 
    JOIN productos p on f.codigo = p.codigo_fabricante group by f.codigo;    
    
    
    SELECT f.nombre,  avg (p.precio) as precio_medio FROM fabricante f 
    JOIN productos p on f.codigo = p.codigo_fabricante group by f.nombre;    
    
    
    SELECT f.codigo as codigo_fabricante, avg (p.precio) as precio_medio FROM fabricante f 
    JOIN productos p on f.codigo = p.codigo_fabricante group by f.codigo;  
    
    
    SELECT f.nombre, avg(p.precio) as precio_medio FROM fabricante f 
    JOIN productos p on f.codigo = p.codigo_fabricante group by f.nombre having avg(p.precio)>=150;
    
    SELECT f.nombre, count(*) as total_productos FROM fabricante f 
    JOIN productos p on f.codigo = p.codigo_fabricante  group by f.nombre having count(*) >=2;
    
    SELECT f.nombre, count(*) as total FROM fabricante f 
    JOIN productos p on f.codigo = p.codigo_fabricante WHERE p.precio >=220 group by f.nombre;
    
    SELECT f.nombre, count(p.codigo) as total FROM fabricante f 
    LEFT JOIN productos p on f.codigo = p.codigo_fabricante and p.precio >=220 group by f.nombre;
    
    SELECT f.nombre, sum(p.precio) as suma_precios FROM fabricante f 
    JOIN productos p on f.codigo = p.codigo_fabricante group by f.nombre having sum(p.precio) >1000;
    
    SELECT p.nombre as producto, p.precio, f.nombre as fabricante FROM productos p 
    JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE p.precio = (select max(p2.precio)FROM productos p2 WHERE p2.codigo_fabricante = p.codigo_fabricante) order by f.nombre;
    
    
    
    
    
    
    
    SELECT * FROM productos WHERE codigo_fabricante = (select codigo FROM fabricante where nombre = 'Lenovo');
    
    SELECT * FROM productos WHERE precio = (select max(precio)FROM productos WHERE codigo_fabricante = (select codigo FROM fabricante where nombre = 'Lenovo'));
    
    SELECT p.nombre FROM productos p
    JOIN fabricante f on p.codigo_fabricante WHERE f.nombre = 'Lenovo' and p.precio= (SELECT max(p2.precio)from productos p2 join fabricante f2 on p2.codigo = f2.codigo where f2.nombre = 'lenovo') ;
    
    
    SELECT p.nombre FROM productos p
    JOIN fabricante f on p.codigo_fabricante WHERE f.nombre = 'Hewlett-Packard' and p.precio= (SELECT min(p2.precio)from productos p2 join fabricante f2 on p2.codigo_fabricante = f2.codigo where f2.nombre = 'Hewlett-Packard') ;
    
    
    SELECT p.* FROM productos p where p.precio >= (SELECT max(p2.precio)from productos p2 join fabricante f2 on p2.codigo_fabricante = f2.codigo where f2.nombre = 'Lenovo') ;
    
    SELECT p.* FROM productos p JOin fabricante f on p.codigo_fabricante = f.codigo where f.nombre = 'Asus' and p.precio >= (SELECT avg(precio) from productos) ;
    
    
    
    
    
    
    
    SELECT * FROM productos p WHERE precio >= ALL(SELECT precio FROM productos);

    SELECT * FROM productos p WHERE precio <= ALL(SELECT precio FROM productos);
    
    SELECT f.nombre FROM fabricante f WHERE f.codigo = ANY(SELECT p.codigo_fabricante FROM productos p);
    
    SELECT f.nombre FROM fabricante f WHERE f.codigo <>ALL(SELECT p.codigo_fabricante FROM productos p where p.codigo_fabricante);
    
    SELECT f.nombre FROM fabricante f WHERE f.codigo IN (SELECT p.codigo_fabricante FROM productos p);
    
    SELECT f.nombre FROM fabricante f WHERE f.codigo NOT IN (SELECT p.codigo_fabricante FROM productos p WHERE codigo_fabricante IS NOT NULL);

    
    
    SELECT nombre FROM fabricante f WHERE EXISTS(SELECT 1 FROM productos p WHERE p.codigo_fabricante = f.codigo);
    
    SELECT nombre FROM fabricante f WHERE NOT EXISTS (SELECT 1 FROM productos p WHERE p.codigo_fabricante = f.codigo);
    
    SELECT f.nombre, (SELECT max(p.precio)FROM productos p WHERE p.codigo_fabricante = f.codigo) as precio_maximo FROM fabricante f;
    
    SELECT * FROM productos p1 WHERE p1.precio >=(SELECT AVG(p2.precio) FROM productos p2 WHERE p2.codigo_fabricante = p1.codigo_fabricante);
    
    SELECT nombre FROM productos WHERE precio = (SELECT max(precio) FROM productos WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo'));
     
    SELECT f.nombre FROM fabricante f 
    JOIN productos p ON f.codigo = p.codigo_fabricante GROUP BY f.nombre HAVING COUNT(*) = (SELECT COUNT(*)FROM productos WHERE codigo_fabricante =(SELECT f.codigo FROM fabricante f WHERE f.nombre = 'Lenovo'));   
    
    
    
    
    
    