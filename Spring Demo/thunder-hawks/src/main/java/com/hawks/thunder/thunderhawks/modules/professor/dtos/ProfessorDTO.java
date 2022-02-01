package com.hawks.thunder.thunderhawks.modules.professor.dtos;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.hawks.thunder.thunderhawks.modules.professor.entities.Professor;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProfessorDTO {
	private String nome;
	private Timestamp dtNascimento;
	private List<EspecialidadeDTO> especialidades = new ArrayList<EspecialidadeDTO>();

	public ProfessorDTO(Professor professor) {
		this.nome = professor.getNome();
		this.dtNascimento = professor.getDtNascimento();
		// this.especialidades = professor.getEspecialidades();
	}

	public ProfessorDTO(Optional<Professor> professor) {
		this.nome = professor.get().getNome();
		this.dtNascimento = professor.get().getDtNascimento();
		// this.especialidades = professor.get().getEspecialidades();
	}
	
}
