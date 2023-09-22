def suma(num1, num2)
    resultado = num1 + num2
    if block_given?
        yield resultado
    else
        puts "El resultado calculado en el metodo es #{resultado}"
    end
end

suma(5, 6) do |resultado|
    puts "El resultado de nuestra operacion es #{resultado}"
end

suma(3, 4)