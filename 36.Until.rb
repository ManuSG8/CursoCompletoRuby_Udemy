respuesta = ""

until respuesta == 'n'
    puts "Estoy jugando"
    print "Moriste, quieres seguir jugando? s/n"
    respuesta = gets.chomp
end