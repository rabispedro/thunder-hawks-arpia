

numero = 0

maior = 0

menor = 5000

i = 0

cond = True

while(cond == True):
    numero=int(input("\nDigite um numero "))

    
    if(numero == -1):
        cond = False

    

    if(numero > maior):
        maior = numero

    if(numero < menor and numero != -1):
        menor = numero





print("O menor numero natural digitado foi " + str(menor))
print("O maior numero natural digitado foi " + str(maior))
