package com.hawks.thunder.thunderhawks.modules.aluno.entities;

import java.io.Serializable;
import java.sql.Timestamp;

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
@Table(name = "tb_aluno")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Aluno implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false, unique = true)
	private Long id;

	@Column(name = "nome", nullable = false)
	private String nome;

	@Column(name = "matricula", nullable = false, unique = true)
	private String matricula;

	@Column(name = "nome_pai", nullable = false)
	private String nomePai;

	@Column(name = "nome_mae", nullable = false)
	private String nomeMae;

	@Column(name = "dt_nascimento", nullable = false)
	private Timestamp dtNascimento;

	@Column(name = "dt_matricula", nullable = false)
	private Timestamp dtMatricula;

	@Column(name = "turma", nullable = true)
	private Long turma;

	@Column(name = "sexo", nullable = false)
	private String sexo;
}
