nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

puts "1.-Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select."
nombres_largos = nombres.select do |nombre|
  nombre.length > 5
end
  print nombres_largos
  puts ""
  puts ""

puts "2.-Utilizando .map crear un arreglo con los nombres en minúscula"
b = nombres.map do |e|
  e = e.downcase
end
print b
puts ""
puts ""

puts "3.-Utilizando .select para crear un arreglo con todos los nombres que empiecen con P."
p_names = nombres.select do |pnombres|
  pnombres.start_with?("P")
end
print p_names
puts""
puts""

puts "4.-Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre."
b = nombres.map do |e|
  e.length
end
print b
puts""
puts""
#
puts "5.-Utilizando .map y .gsub eliminar las vocales de todos los nombres."
b = nombres.map do |e|
  e.gsub(/[aeiou]/, '*')
end
print b
puts""
