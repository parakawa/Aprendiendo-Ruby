#aprendiendo a pushear
 
puts "Ingrese números separados por un espacio"
x = gets.chomp.split(" ")
w=["solucion"]
while x!=nil do
		x.delete_at(0)
end
print x