7.times do
    puts "Esto es parte de un bloque de codigo"
end
puts "------------------------------------"
7.times {
    puts "Esto es parte de un bloque de codigo"
}
puts "------------------------------------"
7.times do |time|
    puts "Esto es parte de un bloque #{time}"
end
puts "------------------------------------"
