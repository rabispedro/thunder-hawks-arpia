package com.hawks.thunder.thunderhawks.services;

import java.util.Optional;

import com.hawks.thunder.thunderhawks.dtos.UserDTO;
import com.hawks.thunder.thunderhawks.entities.User;
import com.hawks.thunder.thunderhawks.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	public UserRepository userRepository;

	public Page<UserDTO> findAllUsers(Pageable pageable) {
		Page<User> users = this.userRepository.findAll(pageable);
		return users.map(currentUser -> new UserDTO(currentUser));
	}

	public UserDTO findUserById(Long id) {
		Optional<User> user = this.userRepository.findById(id);
		return new UserDTO(user);
	}

	public UserDTO createUser(UserDTO userDto) {
		User user = this.userRepository.save(userDto.updateUser(new User()));
		return new UserDTO(user);
	}

	public UserDTO updateUser(Long id, UserDTO userDto) {
		User user = this.userRepository.findById(id).get();

		if(user == null) {
			throw new RuntimeException();
		}

		user = userDto.updateUser(user);
		
		User updatedUser = this.userRepository.save(user);
		return new UserDTO(updatedUser);
	}

	public UserDTO deleteUser(Long id) {
		User user = this.userRepository.findById(id).get();

		if(user == null) {
			throw new RuntimeException();
		}

		this.userRepository.delete(user);

		return new UserDTO(user);
	}
}
