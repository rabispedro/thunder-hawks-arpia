package com.hawks.thunder.thunderhawks.modules.aluno.services;

import com.hawks.thunder.thunderhawks.modules.aluno.dtos.AlunoDTO;
import com.hawks.thunder.thunderhawks.modules.aluno.entities.Aluno;
import com.hawks.thunder.thunderhawks.modules.aluno.repositories.AlunoRepository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class FindAllAlunosService {
	final private AlunoRepository alunoRepository;

	@Transactional(readOnly = true)
	public Page<AlunoDTO> execute(Pageable pageable) {
		final Page<Aluno> alunos = this.alunoRepository.findAll(pageable);
		return alunos.map((aluno) -> new AlunoDTO(aluno));
	}
}