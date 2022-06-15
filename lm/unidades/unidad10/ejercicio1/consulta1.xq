for $libro in doc("libros.xml")/bookstore/book
where $libro
order by $libro/title
return <titulo>{data($libro/title)}</titulo>

