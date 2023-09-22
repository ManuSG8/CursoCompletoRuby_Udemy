def suma num1, num2
    suma = num1 + num2
    return "La suma de #{num1} y #{num2} es: #{suma}"
end

def resta num1, num2
    suma = num1 - num2
    "La suma de #{num1} y #{num2} es: #{suma}" # Esto tambien funcionaria porque en ruby la ultima linea del metodo funciona como return
end

a = 3.5
b = 4

resultado = suma a, b
puts resultado

resultado = resta a, b
puts resultado