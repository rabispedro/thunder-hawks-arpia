package com.hawks.thunder.thunderhawks.dtos;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.hawks.thunder.thunderhawks.entities.User;

public class UserDTO {
	private Long id;
	private String nome;
	private String sobrenome;
	@JsonFormat(pattern = "dd-MM-yyyy")
	private Date dataNascimento;
	private String photoUrl;
	
	public UserDTO() {
	}

	public UserDTO(String nome, String sobrenome, Date dataNascimento, String photoUrl) {
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.dataNascimento = dataNascimento;
		this.photoUrl = photoUrl;
	}

	public UserDTO(User user) {
		this.id = user.getId();
		this.nome = user.getNome();
		this.sobrenome = user.getSobrenome();
		this.dataNascimento = user.getDataNascimento();
		this.photoUrl = user.getPhotoUrl();
	}

//	public UserDTO(Optional<User> user) {
//		if(user.get().getNome() != null) {
//			this.nome = user.get().getNome();
//		}
//
//		if(user.get().getSobrenome() != null) {
//			this.sobrenome = user.get().getSobrenome();
//		}
//
//		if(user.get().getDataNascimento() != null) {
//			this.dataNascimento = user.get().getDataNascimento();
//		}
//
//		if(user.get().getPhotoUrl() != null) {
//			this.photoUrl = user.get().getPhotoUrl();
//		}
//	}

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

		if(this.photoUrl != null) {
			user.setPhotoUrl(this.photoUrl);
		}

		return user;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getPhotoUrl() {
		return photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
}