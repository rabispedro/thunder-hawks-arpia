programa {

    funcao inicio() {
        inteiro num
        escreva("Digite um numero: ")
        leia(num)

        escreva("Numero digitado: ", num, "\n")
        escreva("Fatorial deste numero: ", fatorial(num), "\n")
    }
    
    funcao inteiro fatorial(inteiro num){
        inteiro fat = 1
        para(inteiro i=2; i<=num; i++){
            fat *= i
        }
        retorne fat
    }
}