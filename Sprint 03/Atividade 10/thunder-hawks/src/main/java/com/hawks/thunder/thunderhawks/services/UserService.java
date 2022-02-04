package com.hawks.thunder.thunderhawks.services;

import com.hawks.thunder.thunderhawks.dtos.UserDTO;
import com.hawks.thunder.thunderhawks.entities.User;
import com.hawks.thunder.thunderhawks.repositories.UserRepository;
import com.hawks.thunder.thunderhawks.services.exceptions.ObjectNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {
	@Autowired
	public UserRepository userRepository;

	@Transactional(readOnly = true)
	public Page<UserDTO> findAllUsers(Pageable pageable) {
		final Page<User> users = this.userRepository.findAll(pageable);
		return users.map(currentUser -> new UserDTO(currentUser));
	}

	@Transactional(readOnly = true)
	public UserDTO findUserById(Long id) {
		final User user = this.userRepository.findById(id)
			.orElseThrow(() -> (
				new ObjectNotFoundException(
					"User not found! " +
					"Id: " + id + "."
				)
			)
		);

		return new UserDTO(user);
	}

	@Transactional
	public UserDTO createUser(UserDTO userDto) {
		final User user = this.userRepository.save(userDto.updateUser(new User()));
		return new UserDTO(user);
	}

	@Transactional
	public UserDTO updateUser(Long id, UserDTO userDto) {
		User user = this.userRepository.findById(id)
			.orElseThrow(() -> (
				new ObjectNotFoundException(
					"User not found! " +
					"Id: " + id + "."
				)
			)
		);

		System.out.print(user);
		user = userDto.updateUser(user);
		
		User updatedUser = this.userRepository.save(user);
		return new UserDTO(updatedUser);
	}

	@Transactional
	public UserDTO deleteUser(Long id) {
		final User user = this.userRepository.findById(id)
			.orElseThrow(() -> (
				new ObjectNotFoundException(
					"User not found! " +
					"Id: " + id + "."
				)
			)
		);

		this.userRepository.delete(user);

		return new UserDTO(user);
	}
}
