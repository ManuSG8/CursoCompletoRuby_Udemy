loop do 
    print "Quieres continuar jugando? s/n"
    respuesta = gets.chomp 
    if respuesta != "s"
        break
    end
    puts "Sigamos jugando"
end