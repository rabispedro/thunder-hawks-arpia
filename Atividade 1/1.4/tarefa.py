def fatorial(number):
	fatorial = 1
	for i in range(2,number+1):
		fatorial = fatorial * i
	return fatorial

number = int(input("Digite um numero: "))
print("Numero digitado: {}.".format(number))
print("Fatorial deste numero: {}.".format(fatorial(number)))
