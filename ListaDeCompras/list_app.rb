require "./list.rb"
require "./item.rb"

class ListApp
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run
        puts "Bienvenido a nuestra Lista de Compras!"
        loop do 
            puts # Salto de linea
            puts "a - Agregar un articulo"
            puts "r - Remover un articulo"
            puts "v - Ver articulos"
            puts "m - Marcar un articulo"
            puts "b - Borrar todos los articulos"
            puts "s - Salir de la aplicacion"

            input = gets.chomp

            case input
            when "a"
                print "Que deseas agregar?: "
                item = gets.chomp
                @list.add_item(item)
                40.times { print "*" }
                puts "\n#{item} ha sido agregado a tu lista"
                40.times { print "*" }
            when "r"
                print "# de articulo que deseas remover: "
                index = gets.chomp
                item = @list.remove_item(index.to_i) # Esto elimina el item y lo devuelve al mismo tiempo
                40.times { print "*" }
                puts "\n#{item.text} ha sido eliminado de tu lista"
                40.times { print "*" }
            when "v"
                @list.show_all
            when "m"
                print "# de articulo que deseas marcar: "
                index = gets.chomp
                item = @list.check_item(index.to_i)
                40.times { print "*" }
                puts "\n#{item.text} ha sido marcado en tu lista"
                40.times { print "*" }
            when "b"
                print "Deseas eliminar todos los articulos? s/n: "
                remove = gets.chomp
                if remove == 's'
                    @list.remove_all
                end
            when "s"
                break
            else
                puts "Operacion no reconocida"
            end
        end
        puts "Gracias por utilizar nuestra aplicacion!"
    end
end

list_app = ListApp.new
list_app.run