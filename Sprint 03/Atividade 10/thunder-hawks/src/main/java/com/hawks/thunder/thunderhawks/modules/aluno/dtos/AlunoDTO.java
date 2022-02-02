package com.hawks.thunder.thunderhawks.modules.aluno.dtos;

import java.sql.Timestamp;
import java.util.Optional;

import com.hawks.thunder.thunderhawks.modules.aluno.entities.Aluno;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AlunoDTO {
	private String nome;
	private String matricula;
	private String nomePai;
	private String nomeMae;
	private Timestamp dtNascimento;
	private Timestamp dtMatricula;
	private Long turma;
	private String sexo;

	public AlunoDTO(Aluno aluno) {
		this.nome = aluno.getNome();
		this.matricula = aluno.getMatricula();
		this.nomePai = aluno.getNomePai();
		this.nomeMae = aluno.getNomeMae();
		this.dtNascimento = aluno.getDtNascimento();
		this.dtMatricula = aluno.getDtMatricula();
		this.turma = aluno.getTurma();
		this.sexo = aluno.getSexo();
	}

	public AlunoDTO(Optional<Aluno> aluno) {
		this.nome = aluno.get().getNome();
		this.matricula = aluno.get().getMatricula();
		this.nomePai = aluno.get().getNomePai();
		this.nomeMae = aluno.get().getNomeMae();
		this.dtNascimento = aluno.get().getDtNascimento();
		this.dtMatricula = aluno.get().getDtMatricula();
		this.turma = aluno.get().getTurma();
		this.sexo = aluno.get().getSexo();
	}
}
