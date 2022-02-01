package com.hawks.thunder.thunderhawks.modules.professor.dtos;

import java.util.Optional;

import com.hawks.thunder.thunderhawks.modules.professor.entities.Especialidade;
import com.hawks.thunder.thunderhawks.modules.professor.entities.Professor;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EspecialidadeDTO {
	private String nome;
	private Professor professor;
	
	public EspecialidadeDTO(Especialidade especialidade) {
		this.nome = especialidade.getNome();
		this.professor = especialidade.getProfessor();
	}

	public EspecialidadeDTO(Optional<Especialidade> especialidade) {
		this.nome = especialidade.get().getNome();
		this.professor = especialidade.get().getProfessor();
	}
}
