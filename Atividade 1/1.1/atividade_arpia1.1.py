maior_numero = 0

for i in range(1, 6):

    numero_digitado = int(input(f"Digite o {i}º número Natural: "))

    while numero_digitado < 0:
        numero_digitado = int(input(f"Digite o {i}º número Natural: "))

    if numero_digitado > maior_numero:
        maior_numero = numero_digitado

print(f"\nO maior número Natural digitado foi {maior_numero}!")