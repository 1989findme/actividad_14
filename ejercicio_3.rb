nombres_de_alumnos = {"Emanuel"=>[ 28, "Maipú", "M"], "Alejandra"=>[ 20, "Santiago", "F"] ,"Marcia"=>[ 29, "Bogota", "F"] , "Sergio"=>[ 20, "Santiago", "M"] ,"Ale"=>[ 15, "Santiago", "F"]  }
opcion = 0
puts "A continuación tendrás un menú que permitira ingresar la información de los alumnos"
puts "1.-Agregar alumno"
puts "2.-Permite editar los datos de la persona"
puts "3.-Permite eliminar los datos de una persona"
puts "4.-Muestra la cantidad de personas ingresadas"
puts "5.-Muestra las comunas de todas las personas"
puts "6.-Muestra una lista con todas las personas que tengan entre 20 y 25 años."
puts "7.-Muestra la suma de las edades de todas las personas"
puts "8.-Muestra el promedio de las edades del grupo"
puts "9.-Muestra dos listas de personas, una por cada género."
puts "10.-salir"



while opcion != 10
  opcion = gets.chomp.to_i

  case opcion
  when 1
    puts "1.-Agregar alumno"
    puts "Ingresa nombre del alumno"
    nombre = gets.chomp
    puts "Ingresa la edad del alumno (solo el número)"
    edades = gets.chomp
    puts "Ingresa la comuna del alumno"
    comunas = gets.chomp
    puts "Ingresa el genero del alumno (M es masculino, F es femenino, O es otro)"
    género = gets.chomp
    nombres_de_alumnos [nombre] = [edades, comunas, género]
    print nombres_de_alumnos
    puts""

  when 2
    puts "2.-Permite editar los datos de la persona"
    nombre = gets.chomp
    edades = gets.chomp
    comunas =gets.chomp
    género = gets.chomp
    nombres_de_alumnos[nombre] = [edades, comunas, género]
    print nombres_de_alumnos

  when 3
    puts "3.-Permite eliminar los datos de una persona"
    nombre = gets.chomp
    nombres_de_alumnos.delete(nombre)
    print nombres_de_alumnos
    puts ""

  when 4
    puts "4.-Muestra la cantidad de personas ingresadas"
    print "#{nombres_de_alumnos.size} Personas ingresadas en el sistema"

  when 5
    puts "5.-Muestra las comunas de todas las personas"
    nombres_de_alumnos.each do |k , v|
      puts v[1]
    end

  when 6
    puts "6.-Muestra una lista con todas las personas que tengan entre 20 y 25 años."
    nombres_de_alumnos.each do |k , v|
      if v[0]>= 20 && v[0]<=25
        puts "#{k} Has aprobado"
      end
    end

  when 7
    puts "7.-Muestra la suma de las edades de todas las personas"
    suma = 0
    nombres_de_alumnos.each do |k , v|
      suma += v[0]
    end
    puts "#{suma} Es la suma de las edades de todos los alumnos"

  when 8
    puts "8.-Muestra el promedio de las edades del grupo"
    suma = 0
    nombres_de_alumnos.each do |k , v|
      suma += v[0]
    end
    puts "#{suma/nombres_de_alumnos.length} Es el promedio de las edades"

  when 9
    puts "9.-Muestra dos listas de personas, una por cada género."
    nombres_de_alumnos.each do |k , v|
      if  v[2] == "F"
        puts k , v[2]
      end
    end
    nombres_de_alumnos.each do |k , v|
      if  v[2] == "M"
        puts k , v[2]
      end
    end
  end
end
