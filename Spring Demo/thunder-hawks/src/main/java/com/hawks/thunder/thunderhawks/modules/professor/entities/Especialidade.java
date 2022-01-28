// package com.hawks.thunder.thunderhawks.modules.professor.entities;

// import javax.persistence.Column;
// import javax.persistence.Entity;
// import javax.persistence.GeneratedValue;
// import javax.persistence.GenerationType;
// import javax.persistence.Id;
// import javax.persistence.Table;

// import lombok.AllArgsConstructor;
// import lombok.Builder;
// import lombok.Data;
// import lombok.NoArgsConstructor;

// @Entity
// @Table(name = "tb_especialidade")
// @Data
// @AllArgsConstructor
// @NoArgsConstructor
// @Builder
// public class Especialidade {
// 	@Id
// 	@GeneratedValue(strategy = GenerationType.IDENTITY)
// 	@Column(name = "id", nullable = false, unique = true)
// 	private Long id;

// 	@Column(name = "nome")
// 	private String nome;
	
// 	@Column(name = "professor_id")
// 	private Professor professor;

// }
