package com.hawks.thunder.thunderhawks.modules.turma.services;

import com.hawks.thunder.thunderhawks.modules.turma.dtos.TurmaDTO;
import com.hawks.thunder.thunderhawks.modules.turma.entities.Turma;
import com.hawks.thunder.thunderhawks.modules.turma.repositories.TurmaRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class FindTurmaByIdService {
	final private TurmaRepository turmaRepository;
	
	@Transactional(readOnly = true)
	public TurmaDTO execute(Long id) {
		final Turma turma = this.turmaRepository.findById(id).get();
		return new TurmaDTO(turma);
	}
}
