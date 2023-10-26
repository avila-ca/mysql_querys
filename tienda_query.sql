select nombre_p from producto;
select nombre_p, precio from producto;
select * from producto;
select nombre_p, concat(precio,"€"), concat(precio,"$") from producto where precio;
select nombre_p, concat(precio,"€") as euros, concat(precio,"$") as dollars   from producto where precio;
select upper(nombre_p), precio from producto;
select lower(nombre_p), precio from producto;
select nombre_f, upper(substring(nombre_f, 1, 2)) as Nombre_2_mayusculas from fabricante;
select nombre_p, precio, round(precio, 0) as redondeado from producto;
select nombre_p, precio, round(precio) as sin_decimal from producto;
select codigo_fabricante, codigo_f from producto inner join fabricante on codigo_fabricante=codigo_f;
select distinct codigo_fabricante, codigo_f from producto inner join fabricante on codigo_fabricante=codigo_f;
select nombre_f from fabricante order by nombre_f;
select nombre_f from fabricante order by  nombre_f desc;
select nombre_p, precio from producto order by nombre_p asc, precio desc;
select * from fabricante limit 0 , 5;
select * from fabricante limit 3 , 2;
select nombre_p, precio from producto order by precio asc limit 0, 1;
select nombre_p, precio from producto order by precio desc limit 0, 1;
select nombre_p, codigo_fabricante from producto where codigo_fabricante=2;
select nombre_p, precio, nombre_f, codigo_fabricante, codigo_f from producto inner join fabricante on codigo_fabricante=codigo_f;
select nombre_p, precio, nombre_f, codigo_fabricante, codigo_f from producto inner join fabricante on codigo_fabricante=codigo_f order by nombre_f;
select codigo_f, nombre_p, codigo_fabricante, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f order by nombre_f;
select nombre_p, precio, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f order by precio asc limit 0, 1;
select nombre_p, precio, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f order by precio desc limit 0, 1;
select nombre_p, precio, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f where nombre_f='Lenovo';
select nombre_p, precio from producto inner join fabricante on codigo_fabricante=codigo_f where nombre_f='Crucial' and precio >= 200;
select nombre_p, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f where substring(nombre_f, 1, 2) = 'As' or  substring(nombre_f, 1, 2) = 'He' or substring(nombre_f, 1, 2) = 'Se';
select nombre_p, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f where nombre_f in ('Asus', 'Hewlett-Packard', 'Seagate');
select nombre_p, precio, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f where nombre_f like '%e';
select nombre_p, precio, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f where nombre_f like '%w%';
select nombre_p, precio, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f where precio >= 180 order by precio desc, nombre_p asc;
select codigo_f, nombre_p, precio, nombre_f from producto inner join fabricante on codigo_fabricante=codigo_f;
select  nombre_f, nombre_p from producto RIGHT join fabricante on codigo_fabricante = codigo_f;
select  nombre_f, nombre_p from producto RIGHT join fabricante on codigo_fabricante = codigo_f where nombre_p is null;
select  nombre_p, precio, nombre_f from producto RIGHT join fabricante on codigo_fabricante = codigo_f where precio >= (select max(precio) from producto where nombre_p = 'Lenovo') ;
select  nombre_p, nombre_f from fabricante LEFT join producto on codigo_fabricante = codigo_f where nombre_p = 'Lenovo' ;
select  nombre_p, nombre_f, precio from producto inner join fabricante on codigo_fabricante = codigo_f where nombre_p = 'Lenovo' order by precio desc limit 0, 1 ;
select  nombre_p, nombre_f, precio from producto inner join fabricante on codigo_fabricante = codigo_f where nombre_p = 'Hewlett-Packard' order by precio desc limit 0, 1 ;
select  nombre_p, nombre_f, precio from producto inner join fabricante on codigo_fabricante = codigo_f where nombre_p = 'Lenovo' order by precio desc limit 0, 1 ;
select  nombre_p, nombre_f, precio from producto inner join fabricante on codigo_fabricante = codigo_f where nombre_p = 'Asus' order by precio desc limit 0, 1 ;
