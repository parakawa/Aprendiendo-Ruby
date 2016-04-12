#aprendiendo a recibir e imprimir arrays
puts"ingrese array"
x=gets.chomp
puts x
n=x.length
for i in 0..n-1
	puts x[i]
end