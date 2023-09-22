array_videojuegos = ["Zelda", "Mario Kart", "Super Smash Bros"]
# puts array_videojuegos

array_vacio = Array.new # Esto nos devuelve un array vacio
array = Array.new(3, "Mario")
# puts array
puts "------------------------------------------------"

# Acceder a elementos
puts array_videojuegos[1]

puts array_videojuegos.first
puts array_videojuegos.last

puts array_videojuegos.fetch(1)
puts array_videojuegos.fetch(500, "No hay un juego aqui")
puts "------------------------------------------------"

# Escribir elementos
array_videojuegos << "Tetris"
puts array_videojuegos
puts "------------------------------------------------"
array_videojuegos.push('Pacman')
puts array_videojuegos
puts "------------------------------------------------"
array_videojuegos.unshift('Donkey Kong')
puts array_videojuegos
puts "------------------------------------------------"
array_videojuegos += ["Call of Duty", "Halo"]
puts array_videojuegos
puts "------------------------------------------------"

# Eliminar elementos
donkey_kong = array_videojuegos.shift # Obtener el primer elemento y eliminarlo del array
puts donkey_kong
puts "------------------------------------------------"
puts array_videojuegos
puts "------------------------------------------------"
halo = array_videojuegos.pop
puts halo
puts "------------------------------------------------"
puts array_videojuegos
puts "------------------------------------------------"
restantes = array_videojuegos.drop(2) # Este metodo no elimina los elementos en el array principal
puts restantes
puts "------------------------------------------------"
rebanada = array_videojuegos.slice(1, 3) # Este metodo tampoco elimina los elementos en el array principal
puts rebanada
puts "------------------------------------------------"