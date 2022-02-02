package com.hawks.thunder.thunderhawks.modules.turma.dtos;

import java.util.Optional;

import com.hawks.thunder.thunderhawks.modules.turma.entities.Turma;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TurmaDTO {
	private String turno;
	private String serie;
	private String nomeTurma;
	private Long professor;

	public TurmaDTO(Turma turma) {
		this.turno = turma.getTurno();
		this.serie = turma.getSerie();
		this.nomeTurma = turma.getNomeTurma();
		this.professor = turma.getProfessor();
	}

	public TurmaDTO(Optional<Turma> turma) {
		this.turno = turma.get().getTurno();
		this.serie = turma.get().getSerie();
		this.nomeTurma = turma.get().getNomeTurma();
		this.professor = turma.get().getProfessor();
	}
}
