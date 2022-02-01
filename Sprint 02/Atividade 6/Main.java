public class Main {
	public static void main(String[] args) {
		System.out.printf("Prática Programação Orientada a Objeto\n\n");

		CarroConversivel carroConversivel = new CarroConversivel();
		carroConversivel.setCor("Azul");
		carroConversivel.setMarca("Porsche");
		carroConversivel.setModelo("GT3");
		carroConversivel.setNumeroPassageiros(2);
		carroConversivel.setCapacidadeCombustivel(64.00);
		carroConversivel.setConsumoCombustivel(10.00);

		CarroCorrida carroFormula1 = new CarroCorrida(
			"Vermelho",
			"Ferrari",
			"F1",
			1,
			110.00,
			1.30
		);

		CarroPopular carroPopular = new CarroPopular(
			"Branco",
			"Volkswagem",
			"Gol",
			5,
			53.00,
			13.00
		);

		System.out.printf("PRIMEIRO CARRO: " + carroConversivel.getMarca() + " " + carroConversivel.getModelo() + "\n");
		System.out.printf("Cor: " + carroConversivel.getCor() + "\n");
		System.out.printf("Marca: " + carroConversivel.getMarca() + "\n");
		System.out.printf("Modelo: " + carroConversivel.getModelo() + "\n");
		System.out.printf("Numero de Passageiros: " + carroConversivel.getNumeroPassageiros() + "\n");
		System.out.printf("Capacidade de Combustivel: " + carroConversivel.getCapacidadeCombustivel() + "\n");
		System.out.printf("Consumo Combustivel: " + carroConversivel.getConsumoCombustivel() + "/L\n");

		System.out.print("\n\n");

		System.out.print("Segundo carro: " + carroFormula1.getMarca() + " " + carroFormula1.getModelo() + "\n");
		System.out.print(carroFormula1);

		System.out.print("\n\n");

		System.out.print("Terceiro carro: " + carroPopular.getMarca() + " " + carroPopular.getModelo() + "\n");
		System.out.print(carroPopular);

		System.out.print("\n\n");

		carroConversivel.buzinar();
		carroFormula1.buzinar();
		carroPopular.buzinar();

	}
}
