def hola
    yield # Nos sirve para saltar a nuestro bloque de codigo desde cualquier parte
    puts "Hola desde nuestra funcion"
    yield 
end

hola do 
    puts "Hola desde nuestro bloque"
end

# hola # Esto da error porque no le estamos pasando un bloque de codigo para yield