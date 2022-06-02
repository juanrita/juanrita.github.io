<book>{
for $libro in doc("libros.xml")/bookstore/book[price <=30]
order by $libro/title
return <title>{$libro/title, $libro/price}</title>
}</book>