package com.hawks.thunder.thunderhawks.modules.turma.services;

import com.hawks.thunder.thunderhawks.modules.turma.dtos.TurmaDTO;
import com.hawks.thunder.thunderhawks.modules.turma.entities.Turma;
import com.hawks.thunder.thunderhawks.modules.turma.repositories.TurmaRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class UpdateTurmaByIdService {
	final private TurmaRepository turmaRepository;

	@Transactional
	public TurmaDTO execute(Long id, TurmaDTO turmaDto) {
		Turma turma = this.turmaRepository.findById(id).get();

		turma.setNomeTurma(turmaDto.getNomeTurma());
		turma.setProfessor(turmaDto.getProfessor());
		turma.setSerie(turmaDto.getSerie());
		turma.setTurno(turmaDto.getTurno());

		return new TurmaDTO(this.turmaRepository.save(turma));
	}
}
