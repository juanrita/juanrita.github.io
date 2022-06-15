for $libro in doc("bookstore.xml")/bookstore/book
order by $libro/@category,  $libro/title
return $libro