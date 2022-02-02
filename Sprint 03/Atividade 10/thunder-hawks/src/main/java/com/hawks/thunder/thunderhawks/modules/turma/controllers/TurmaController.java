package com.hawks.thunder.thunderhawks.modules.turma.controllers;

import com.hawks.thunder.thunderhawks.modules.turma.dtos.TurmaDTO;
import com.hawks.thunder.thunderhawks.modules.turma.services.CreateTurmaService;
import com.hawks.thunder.thunderhawks.modules.turma.services.DeleteTurmaByIdService;
import com.hawks.thunder.thunderhawks.modules.turma.services.FindAllTurmasService;
import com.hawks.thunder.thunderhawks.modules.turma.services.FindTurmaByIdService;
import com.hawks.thunder.thunderhawks.modules.turma.services.UpdateTurmaByIdService;

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
@RequestMapping(path = "/turma")
@AllArgsConstructor
public class TurmaController {
	final private FindAllTurmasService findAllTurmasService;
	final private FindTurmaByIdService findTurmaByIdService;
	final private CreateTurmaService createTurmaService;
	final private DeleteTurmaByIdService deleteTurmaByIdService;
	final private UpdateTurmaByIdService updateTurmaByIdService;

	@GetMapping(path = "/")
	public ResponseEntity<Page<TurmaDTO>> findAllTurmas(Pageable pageable) {
		final Page<TurmaDTO> turmas = this.findAllTurmasService.execute(pageable);
		return ResponseEntity.ok(turmas);
	}

	@GetMapping(path = "/{id}")
	public ResponseEntity<TurmaDTO> findTurmaById(@PathVariable Long id) {
		final TurmaDTO turma = this.findTurmaByIdService.execute(id);
		return ResponseEntity.ok(turma);
	}

	@PostMapping(path = "/")
	public ResponseEntity<TurmaDTO> createTurma(@RequestBody TurmaDTO turmaDto) {
		final TurmaDTO turma = this.createTurmaService.execute(turmaDto);
		return ResponseEntity.ok(turma);
	}

	@DeleteMapping(path = "/{id}")
	public ResponseEntity<TurmaDTO> deleteTurmaById(@PathVariable Long id) {
		final TurmaDTO turma = this.deleteTurmaByIdService.execute(id);
		return ResponseEntity.ok(turma);
	}

	@PutMapping(path = "/{id}")
	public ResponseEntity<TurmaDTO> updateTurmaById(@PathVariable Long id, @RequestBody TurmaDTO turmaDto) {
		final TurmaDTO turma = this.updateTurmaByIdService.execute(id, turmaDto);
		return ResponseEntity.ok(turma);
	}
}
