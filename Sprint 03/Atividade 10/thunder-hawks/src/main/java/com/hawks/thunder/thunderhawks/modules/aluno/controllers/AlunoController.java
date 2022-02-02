package com.hawks.thunder.thunderhawks.modules.aluno.controllers;

import com.hawks.thunder.thunderhawks.modules.aluno.dtos.AlunoDTO;
import com.hawks.thunder.thunderhawks.modules.aluno.services.CreateAlunoService;
import com.hawks.thunder.thunderhawks.modules.aluno.services.DeleteAlunoByIdService;
import com.hawks.thunder.thunderhawks.modules.aluno.services.FindAllAlunosService;
import com.hawks.thunder.thunderhawks.modules.aluno.services.FindAlunoByIdService;
import com.hawks.thunder.thunderhawks.modules.aluno.services.UpdateAlunoByIdService;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping(path = "/aluno")
@AllArgsConstructor
public class AlunoController {
	final private FindAllAlunosService findAllAlunosService;
	final private FindAlunoByIdService findAlunoByIdService;
	final private DeleteAlunoByIdService deleteAlunoByIdService;
	final private UpdateAlunoByIdService updateAlunoByIdService;
	final private CreateAlunoService createAlunoService;

	@GetMapping(path = "/")
	public ResponseEntity<Page<AlunoDTO>> findAllAlunos(Pageable pageable) {
		final Page<AlunoDTO> alunos = this.findAllAlunosService.execute(pageable);
		return ResponseEntity.ok(alunos);
	}

	@GetMapping(path = "/{id}")
	public ResponseEntity<AlunoDTO> findAlunoById(@PathVariable Long id) {
		final AlunoDTO aluno = this.findAlunoByIdService.execute(id);
		return ResponseEntity.ok(aluno);
	}

	@PostMapping(path = "/")
	public ResponseEntity<AlunoDTO> createAluno(@RequestBody AlunoDTO alunoDto) {
		final AlunoDTO aluno = this.createAlunoService.execute(alunoDto);
		return ResponseEntity.ok(aluno);
	}

	@DeleteMapping(path = "/{id}")
	public ResponseEntity<AlunoDTO> deleteAlunoById(@PathVariable Long id) {
		final AlunoDTO aluno = this.deleteAlunoByIdService.execute(id);
		return ResponseEntity.ok(aluno);
	}

	@PutMapping(path = "/{id}")
	public ResponseEntity<AlunoDTO> updateAlunoById(@PathVariable Long id, @RequestBody AlunoDTO alunoDto) {
		final AlunoDTO aluno = this.updateAlunoByIdService.execute(id, alunoDto);
		return ResponseEntity.ok(aluno);
	}
}
