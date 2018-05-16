
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts "1.-Utilizando map aumentar valor de cada elemento en 1"
b = a.map do |e|
  e = e +1
end
print b
puts""
puts""

puts "2.-Utilizando reject descartar todos los elementos menores a 5 en el array."
b = a.reject{ |x| x <5}
print b
puts""
puts""

puts "3.-Utilizando map convertir todos los valores a float"
flotantes = a.map do | b | b.to_f
end
print flotantes
puts""
puts""

puts "4.-Utilizando map convertir todos los valores a string"
string = a.map do | b | b.to_s
end
print string
puts""
puts""

puts "5.-Utilizando select descartar todos los elementos menores a 5 en el array."
descarte =a.select do |eldescarte|
  eldescarte.>5
end
print descarte
puts""
puts""

puts "6.-Utilizando inject obtener la suma de todos los elementos del array."
b = a.inject(0){|sum, x| sum + x}
puts "#{b} Es la suma de todos los elementos"
puts""

puts "7.-Utilizando group_by agrupar todos los números por paridad "
print a.group_by{|x| x.even?}
puts""
puts""

puts "8.-Utilizando group_by agrupar todos los números mayores y menores que 6."
print a.group_by{|x| x< 6}
