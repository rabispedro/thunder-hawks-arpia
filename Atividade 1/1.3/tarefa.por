programa {

    funcao inicio() {
        inteiro num
        escreva("Digite um numero: ")
        leia(num)

        escreva("Numero digitado: ", num, "\n")
        escreva("Esse numero é primo? ", ehPrimo(num), "\n")
    }
    
    funcao logico ehPrimo(inteiro num){
        para(inteiro i=2; i<num; i++){
            se((num%i) == 0) {
                retorne falso
            }
        }
        retorne verdadeiro
    }
}