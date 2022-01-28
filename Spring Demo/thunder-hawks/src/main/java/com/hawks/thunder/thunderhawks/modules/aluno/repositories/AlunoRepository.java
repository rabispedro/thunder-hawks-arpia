package com.hawks.thunder.thunderhawks.modules.aluno.repositories;

import com.hawks.thunder.thunderhawks.modules.aluno.entities.Aluno;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AlunoRepository extends JpaRepository<Aluno, Long> {

}
