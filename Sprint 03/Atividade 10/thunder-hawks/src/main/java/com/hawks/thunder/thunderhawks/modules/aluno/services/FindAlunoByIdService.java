package com.hawks.thunder.thunderhawks.modules.aluno.services;

import com.hawks.thunder.thunderhawks.modules.aluno.dtos.AlunoDTO;
import com.hawks.thunder.thunderhawks.modules.aluno.entities.Aluno;
import com.hawks.thunder.thunderhawks.modules.aluno.repositories.AlunoRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class FindAlunoByIdService {
	final private AlunoRepository alunoRepository;

	@Transactional(readOnly = true)
	public AlunoDTO execute(Long id) {
		final Aluno aluno = this.alunoRepository.findById(id).get();
		return new AlunoDTO(aluno);
	}
}
