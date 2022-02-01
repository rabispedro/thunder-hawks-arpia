package com.hawks.thunder.thunderhawks.modules.professor.entities;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.ManyToAny;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "tb_professor")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Professor implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, unique = true)
	private Long id;

	@Column(name = "nome", nullable = false)
	private String nome;

	@Column(name = "dt_nascimento", nullable = false)
	private Timestamp dtNascimento;

// 	@ManyToAny
// 	@Column(name = "especialidades", nullable = true)
// 	private List<Especialidade> especialidades = new ArrayList<Especialidade>();
}
