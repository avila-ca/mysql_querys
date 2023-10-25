use tienda;
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
select nombre_f from fabricante order by nombre_p;
select nombre_f from fabricante order by  nombre_p desc;
select nombre_p from producto order by nombre_p where nombre_p (select precio from producto order by precio desc); 
select * from fabricante limit 0 , 5;
select * from fabricante limit 3 , 2;
select nombre_p, precio from producto order by precio asc limit 0, 1;
select nombre_p, precio from producto order by precio desc limit 0, 1;
select nombre_p, codigo_fabricante from producto where codigo_fabricante=2;
select nombre_p, precio, nombre_f, codigo_fabricante, codigo_f from producto inner join fabricante on codigo_fabricante=codigo_f;
select nombre_p, precio, nombre_f, codigo_fabricante, codigo_f from producto inner join fabricante on codigo_fabricante=codigo_f order by nombre_f;

