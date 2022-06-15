(:14.Mostrar el título y el número de autores que tiene cada título en etiquetas
diferentes.:)

for $libro in doc ("libros.xml")/bookstore/book
return 
<libro>
<titulo>{$libro/title/text()}</titulo>
<nautores>{count($libro/author)}</nautores>
</libro>