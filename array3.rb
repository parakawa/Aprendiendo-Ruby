#aprendiendo a sumar
 
puts "Ingrese números separados por un espacio"
numeros = gets.chomp.split(" ")
suma = 0
numeros.each do |num|
suma += num.to_i
end

puts suma