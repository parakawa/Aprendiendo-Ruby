#aprendiendo a recibir ,
#procesar y guardar resultado en array
puts"ingrese array"
x=gets.chomp
puts x
n=x.length
w=x.split(" ").to_i
for i in 0..n-1
	puts w[i]
end
puts y