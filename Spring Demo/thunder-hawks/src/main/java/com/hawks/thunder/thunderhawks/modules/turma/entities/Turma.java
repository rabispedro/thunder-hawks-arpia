package com.hawks.thunder.thunderhawks.modules.turma.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "tb_turma")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Turma {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false, unique = true)
	private Long id;

	@Column(name = "turno", nullable = false)
	private String turno;

	@Column(name = "serie", nullable = false)
	private String serie;

	@Column(name = "nome_turma", nullable = false)
	private String nomeTurma;

	@Column(name = "professor", nullable = false)
	private Long professor;
}
