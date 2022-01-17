def eh_primo(number):
	for i in range(2,number):
		if(number % i == 0):
			return False
	return True


number = int(input("Digite um numero: "))
print("Numero digitado: {}.".format(number))
print("Numero digitado eh primo? {}.".format(eh_primo(number)))

