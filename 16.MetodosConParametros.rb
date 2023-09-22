def saludar(nombre, saludo) # Aqui tampoco son necesarios los parentesis
    puts "Hola #{nombre}, que tengas #{saludo}"
end

print "Introduce tu nombre: "
nombre = gets.chomp 

saludar(nombre, "buenas tardes")
saludar nombre, "buenas tardes"