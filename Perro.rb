class Perro
    attr_reader :raza, :color, :edad # Getters
    attr_writer :color # Setters
    # attr_accessor :edad # Getter y setter combinado

    def initialize(raza, color, edad) # Variables de instancia
        @raza = raza
        @color = color
        @edad = edad
    end

    def ladrar(ladrido)
        puts "#{ladrido} #{ladrido} #{ladrido}"
    end

    def description
        puts "Soy de raza #{@raza}, de color #{@color} y tengo #{@edad} anios"
    end

    # Metodo toString
    def to_s
        puts "Soy de raza #{@raza}, de color #{@color} y tengo #{@edad} anios"
    end
end

perro = Perro.new("Pastor Aleman", "Cafe", 5)

puts perro.raza
puts perro.color
puts perro.edad