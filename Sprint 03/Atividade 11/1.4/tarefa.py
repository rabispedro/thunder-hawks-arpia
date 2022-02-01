def fatorial(number):
	if (number <= 0):
		return 0

	fatorial = 1
	for i in range(2, (number+1)):
		fatorial = fatorial * i

	return fatorial

number = int(input("Digite um numero: "))
print("Numero digitado: {}.".format(number))

if(fatorial(number) == 0):
	print("Este numero nao tem fatorial.")
else:
	print("Fatorial deste numero: {}.".format(fatorial(number)))
