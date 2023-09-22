def hola
    resultado = 2 + 2
    yield resultado # Asi le pasamos el parametro al bloque
end

hola do |resultado|
    puts "El resultado de nuestra operacion es #{resultado}"
end