public class CarroPopular extends Carro {
	
	public CarroPopular(){
		super();
	}

	public CarroPopular(
		String cor,
		String marca,
		String modelo,
		Integer numeroPassageiros,
		Double capacidadeCombustivel,
		Double consumoCombustivel
	) {
		super(cor, marca, modelo, numeroPassageiros, capacidadeCombustivel, consumoCombustivel);
	}


	public void buzinar(){
		System.out.printf("FON FON!!!\n");
	}
}
