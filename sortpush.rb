def comparar(x,y)
		x.push(y)
		x.uniq!
		x.sort	
	return x
end

def impresionc(x,y)
	puts comparar(x,y)
end

impresionc([],3)