public abstract class Carro implements VeiculoTerrestre {
	private String cor;
	private String marca;
	private String modelo;
	private Integer numeroPassageiros;
	private Double capacidadeCombustivel;
	private Double consumoCombustivel;

	public Carro() {
	}

	public Carro(
		String cor,
		String marca,
		String modelo,
		Integer numeroPassageiros,
		Double capacidadeCombustivel,
		Double consumoCombustivel
	) {
		this.cor = cor;
		this.marca = marca;
		this.modelo = modelo;
		this.numeroPassageiros = numeroPassageiros;
		this.capacidadeCombustivel = capacidadeCombustivel;
		this.consumoCombustivel = consumoCombustivel;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public Integer getNumeroPassageiros() {
		return numeroPassageiros;
	}

	public void setNumeroPassageiros(Integer numeroPassageiros) {
		this.numeroPassageiros = numeroPassageiros;
	}

	public Double getCapacidadeCombustivel() {
		return capacidadeCombustivel;
	}

	public void setCapacidadeCombustivel(Double capacidadeCombustivel) {
		this.capacidadeCombustivel = capacidadeCombustivel;
	}

	public Double getConsumoCombustivel() {
		return consumoCombustivel;
	}

	public void setConsumoCombustivel(Double consumoCombustivel) {
		this.consumoCombustivel = consumoCombustivel;
	}

	@Override
	public String toString() {
		String carro = "";
		carro += "Cor: " + this.cor + "\n";
		carro += "Marca: " + this.marca + "\n";
		carro += "Modelo: " + this.modelo + "\n";
		carro += "Numero de Passageiros: " + this.numeroPassageiros + "\n";
		carro += "Capacidade de Combustivel: " + this.capacidadeCombustivel + "\n";
		carro += "Consumo Combustivel: " + this.consumoCombustivel + "/L\n";
		return carro;
	}

	public void acelerar() {
		System.out.printf("Acelerando...\n");
	}

	public void freiar() {
		System.out.printf("Freiando...\n");
	}

	public void buzinar() {
		System.out.printf("BI BI!!!\n");
	}
}
