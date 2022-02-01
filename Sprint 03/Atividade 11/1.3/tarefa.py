def eh_primo(num):
	if (num <= 0):
		return False
	
	if (num == 2):
		return True
	
	if (num%2 == 0):
		return False
	
	raiz = int(num**0.5)
	
	for i in range(3, (raiz+1), 2):
		if (num%i == 0):
			return False
	
	return True 

num = int(input("Digite o numero: "))
print("Numero digitado: {}".format(num))
print("E primo? {}".format(eh_primo(num)))
