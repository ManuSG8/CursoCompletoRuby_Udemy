10.times do
    puts "Este es el iterador times"
end

10.times do |time|
    puts "Este es el iterador #{time}"
end

contador = 5
contador.times do |time|
    puts "Este es el iterador #{time}"
end