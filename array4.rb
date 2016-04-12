#aprendiendo a pushear
 
puts "Ingrese números separados por un espacio"
numeros = gets.chomp.split(" ")
w=["solucion"]
n=numeros.length
for i in 0..n-1
	y= numeros[i].to_i+1
	w.push(y)
end
print w