def prueba(x)
	x.uniq!
	x.sort
end

def impresion(x)
	print x
	print "\n"
	puts prueba(x)
	puts ""
end

impresion([1,5,3,3,2,7])