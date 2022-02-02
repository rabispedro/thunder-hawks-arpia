package com.hawks.thunder.thunderhawks.modules.aluno.services;

import com.hawks.thunder.thunderhawks.modules.aluno.dtos.AlunoDTO;
import com.hawks.thunder.thunderhawks.modules.aluno.entities.Aluno;
import com.hawks.thunder.thunderhawks.modules.aluno.repositories.AlunoRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CreateAlunoService {
	final private AlunoRepository alunoRepository;

	@Transactional
	public AlunoDTO execute(AlunoDTO alunoDto) {
		final Aluno aluno = this.alunoRepository.save(
			Aluno.builder()
				.nome(alunoDto.getNome())
				.matricula(alunoDto.getMatricula())
				.nomePai(alunoDto.getNomePai())
				.nomeMae(alunoDto.getNomeMae())
				.dtNascimento(alunoDto.getDtNascimento())
				.dtMatricula(alunoDto.getDtMatricula())
				.turma(alunoDto.getTurma())
				.sexo(alunoDto.getSexo())
				.build()
		);
		return new AlunoDTO(aluno);
	}
}