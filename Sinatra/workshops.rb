require "sinatra"

def workshop_content(name) # Funcion para leer el contenido de los archivos
    File.read("workshops/#{name}.txt")
    rescue Errno::ENOENT
        return nil
end

def save_workshop(name, description) # Funcion para guardar archivos o modificarlo si ya existe
    File.open("workshops/#{name}.txt", "w") do |file|
        file.print(description)
    end
end

def delete_workshop(name)
    File.delete("workshops/#{name}.txt")
end

get "/" do
    @files = Dir.entries("workshops") # Nos devuelve un array con los nombres de los archivos
    erb :home, layout: :main # Le pasamos el nombre de la vista como simbolo y layout para agregarlo al yield
end

get "/create" do
    erb :create, layout: :main
end

get "/:name" do
    @name = params[:name]
    @description = workshop_content(@name)
    erb :workshop, layout: :main
end

post "/create" do 
    save_workshop(params["name"], params["description"])
    @name = params["name"]
    @message = "creado"
    erb :message, layout: :main
end

delete "/:name" do
    delete_workshop(params[:name])
    @name = params[:name]
    @message = "eliminado"
    erb :message, layout: :main
end

get "/:name/edit" do
    @name = params[:name]
    @description = workshop_content(@name)
    erb :edit, layout: :main
end

put "/:name" do
    save_workshop(params["name"], params["description"])
    redirect URI.escape("/#{params[:name]}")
end