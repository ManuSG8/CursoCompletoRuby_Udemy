num_array = [1, 2, 3, 4, 5]

num_array.each do |num|
    puts num
end


contacts_hash = {"Manu" => 12345, "Pedro" => 6789, 'Ana' => 5555}

contacts_hash.each do |key, value|
    puts "La llave es #{key} y el valor es #{value}"
end

contacts_hash.each_key do |key|
    puts "La llave es #{key}"
end

contacts_hash.each_value do |value|
    puts "El valor es #{value}"
end

"Manuel".each_char do |chr|
    puts chr
end