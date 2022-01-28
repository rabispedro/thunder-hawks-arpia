package com.hawks.thunder.thunderhawks.modules.turma.repositories;

import com.hawks.thunder.thunderhawks.modules.turma.entities.Turma;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TurmaRepository extends JpaRepository<Turma, Long> {
	
}
