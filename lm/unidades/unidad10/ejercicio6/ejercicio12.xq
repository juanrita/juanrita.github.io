(:12.Mostrar la suma total de los precios de los libros con la etiqueta "total".:)
let $suma := doc("libros.xml")/bookstore/book/price
return <total>{sum($suma)}</total>
