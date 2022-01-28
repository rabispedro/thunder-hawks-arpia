package com.hawks.thunder.thunderhawks.modules.aluno.services;

import com.hawks.thunder.thunderhawks.modules.aluno.dtos.AlunoDTO;
import com.hawks.thunder.thunderhawks.modules.aluno.entities.Aluno;
import com.hawks.thunder.thunderhawks.modules.aluno.repositories.AlunoRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class UpdateAlunoByIdService {
	final private AlunoRepository alunoRepository;

	@Transactional
	public AlunoDTO execute(Long id, AlunoDTO alunoDto) {
		Aluno aluno =	this.alunoRepository.findById(id)
			.map(updatedAluno -> {
				updatedAluno.setNome(alunoDto.getNome());
				updatedAluno.setMatricula(alunoDto.getMatricula());
				updatedAluno.setNomePai(alunoDto.getNomePai());
				updatedAluno.setNomeMae(alunoDto.getNomeMae());
				updatedAluno.setDtNascimento(alunoDto.getDtNascimento());
				updatedAluno.setDtMatricula(alunoDto.getDtMatricula());
				updatedAluno.setTurma(alunoDto.getTurma());
				updatedAluno.setSexo(alunoDto.getSexo());
				this.alunoRepository.save(updatedAluno);
				return updatedAluno;
			})
			.orElseThrow(
				null
			)
		;

		return new AlunoDTO(aluno);
	}
}
