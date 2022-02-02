package com.hawks.thunder.thunderhawks.dtos;

import java.util.Date;
import java.util.Optional;

import com.hawks.thunder.thunderhawks.entities.User;

public class UserDTO {
	private String nome;
	private String sobrenome;
	private Date dataNascimento;
	
	public UserDTO() {
	}

	public UserDTO(String nome, String sobrenome, Date dataNascimento) {
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.dataNascimento = dataNascimento;
	}

	public UserDTO(User user) {
		this.nome = user.getNome();
		this.sobrenome = user.getSobrenome();
		this.dataNascimento = user.getDataNascimento();
	}

	public UserDTO(Optional<User> user) {
		if(user.get().getNome() != null) {
			this.nome = user.get().getNome();
		}

		if(user.get().getSobrenome() != null) {
			this.sobrenome = user.get().getSobrenome();
		}

		if(user.get().getDataNascimento() != null) {
			this.dataNascimento = user.get().getDataNascimento();
		}
	}

	public User updateUser(User user){
		if(this.nome != null) {
			user.setNome(this.nome);
		}

		if(this.sobrenome != null) {
			user.setSobrenome(this.sobrenome);
		}

		if(this.dataNascimento != null) {
			user.setDataNascimento(this.dataNascimento);
		}

		return user;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
}