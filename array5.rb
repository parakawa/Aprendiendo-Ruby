#aprendiendo a deletear
 
puts "Ingrese números separados por un espacio"
numeros = gets.chomp.split(" ")
w=["solucion"]
n=numeros.length
for i in 0..n-3
	numeros.delete_at(i)
end
print numeros