for $year in doc ("libros.xml") /bookstore/book/year
return <publicacion>{$year}</publicacion>
