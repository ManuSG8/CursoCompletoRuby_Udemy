def suma(num1, num2, &block)
    resultado = num1 + num2
    block.call resultado # Sustituir yield
end

suma(5, 6) do |resultado|
    puts "El resultado de nuestra operacion es #{resultado}"
end