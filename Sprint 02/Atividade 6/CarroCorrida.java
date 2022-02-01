public class CarroCorrida extends Carro {
	
	public CarroCorrida(){
		super();
	}

	public CarroCorrida(
		String cor,
		String marca,
		String modelo,
		Integer numeroPassageiros,
		Double capacidadeCombustivel,
		Double consumoCombustivel
	) {
		super(cor, marca, modelo, numeroPassageiros, capacidadeCombustivel, consumoCombustivel);
	}
}
