contactos = {"manu" => 1234, "pedro" => 4545, 2121 => "francisco"}
puts contactos
puts contactos.length
puts contactos.keys # Tambien el complementario .values
puts contactos.has_key?("manu") # Tambien el complementario .has_value?
puts contactos.has_key?("francisco")
puts "------------------------------------------------"

puts contactos["manu"]
puts contactos["pedro"]
puts contactos[2121]

contactos["pedro"] = 3333
puts contactos

contactos_simbolos = {:manu => 1234, :pedro => 4545}
# contactos_simbolos = {manu: 1234, pedro: 4545} # Equivalente al de arriba
puts contactos_simbolos[:pedro]
puts "------------------------------------------------"

# Escribir elementos
contactos_simbolos[:juan] = 9898
puts contactos_simbolos
contactos_simbolos = contactos_simbolos.merge({:maria => 5757, :sergio => 0101}) # Escribir varios elementos a la vez
puts contactos_simbolos
puts "------------------------------------------------"
contactos_simbolos.store(:rodolfo, 9999)
puts contactos_simbolos


