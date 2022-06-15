<book>
{
for $libro in doc("libros.xml")/bookstore/book
where $libro/year=2005
order by $libro/title
return <lib2005>{$libro/title, $libro/author}</lib2005>
}
</book>