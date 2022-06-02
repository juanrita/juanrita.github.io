(:13.Mostrar cada uno de los precios de los libros, y al final una nueva etiqueta con
la suma de los precios.:)
<libros>
{for $libro in doc ("libros.xml")/bookstore/book
return $libro/price}
{let $libros := doc("libros.xml")/bookstore/book
 return <total>{sum($libros/price)}</total>}
</libros>