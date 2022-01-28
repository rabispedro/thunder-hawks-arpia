package com.hawks.thunder.thunderhawks.modules.turma.services;

import com.hawks.thunder.thunderhawks.modules.turma.dtos.TurmaDTO;
import com.hawks.thunder.thunderhawks.modules.turma.entities.Turma;
import com.hawks.thunder.thunderhawks.modules.turma.repositories.TurmaRepository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class FindAllTurmasService {
	final private TurmaRepository turmaRepository;

	@Transactional(readOnly = true)
	public Page<TurmaDTO> execute(Pageable pageable) {
		final Page<Turma> turmas = this.turmaRepository.findAll(pageable);
		return turmas.map(turma -> new TurmaDTO(turma));
	}
}
