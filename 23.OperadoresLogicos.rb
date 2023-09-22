# calificacion = 10

# if calificacion == 0 || calificacion == 1
#     puts "No estudiaste nada!"
# elsif calificacion > 1 && calificacion < 7
#     puts "Reprobaste"
# elsif calificacion == 7 || calificacion == 8
#     puts "Aprobaste de suerte"
# elsif calificacion == 9
#     puts "Te fue muy bien!"
# elsif calificacion == 10 
#     puts "Felicidades. Sacaste un 10!!"
# else 
#     puts "Calificacion no valida"
# end

def evaluar(calificacion)
    if calificacion == 0 || calificacion == 1
        puts "No estudiaste nada!"
    elsif calificacion > 1 && calificacion < 7
        puts "Reprobaste"
    elsif calificacion == 7 || calificacion == 8
        puts "Aprobaste de suerte"
    elsif calificacion == 9
        puts "Te fue muy bien!"
    elsif calificacion == 10
        puts "Felicidades. Sacaste un 10!!"
    else
        puts "Calificacion no valida"
    end
end

print "Dime tu calificacion: "
calificacion = gets.to_i # Con 'to_i' convertimos el string que devuelve el metodo 'gets' a un 'integer'

evaluar(calificacion)