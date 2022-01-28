package com.hawks.thunder.thunderhawks.modules.turma.services;

import com.hawks.thunder.thunderhawks.modules.turma.dtos.TurmaDTO;
import com.hawks.thunder.thunderhawks.modules.turma.entities.Turma;
import com.hawks.thunder.thunderhawks.modules.turma.repositories.TurmaRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CreateTurmaService {
	final private TurmaRepository turmaRepository;
	
	@Transactional
	public TurmaDTO execute(TurmaDTO turmaDto) {
		final Turma turma = this.turmaRepository.save(
			Turma.builder()
			.turno(turmaDto.getTurno())
			.serie(turmaDto.getSerie())
			.nomeTurma(turmaDto.getNomeTurma())
			.professor(turmaDto.getProfessor())
			.build()
		);
		return new TurmaDTO(turma);
	}
}
