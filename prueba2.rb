print "Entero, por favor: "
num_usuario = Integer(gets.chomp)

if num_usuario < 0
  puts "¡Elegiste un entero negativo!"
elsif num_usuario > 0
  puts "¡Elegiste un entero positivo!"
else
  puts "¡Elegiste cero!"
end