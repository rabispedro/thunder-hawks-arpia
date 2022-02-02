package com.hawks.thunder.thunderhawks.controllers;

import com.hawks.thunder.thunderhawks.dtos.UserDTO;
import com.hawks.thunder.thunderhawks.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/users")
public class UserController {
	@Autowired
	private UserService userService;

	@GetMapping(path = "/")
	public ResponseEntity<Page<UserDTO>> findAllUsers(Pageable pageable) {
		Page<UserDTO> users = this.userService.findAllUsers(pageable);
		return ResponseEntity.ok(users);
	}

	@GetMapping(path = "/{id}")
	public ResponseEntity<UserDTO> findUserById(@PathVariable Long id) {
		UserDTO user = this.userService.findUserById(id);
		return ResponseEntity.ok(user);
	}

	@PostMapping(path = "/")
	public ResponseEntity<UserDTO> createUser(@RequestBody UserDTO userDto) {
		UserDTO user = this.userService.createUser(userDto);
		return ResponseEntity.ok(user);
	}

	@PatchMapping(path = "/{id}")
	public ResponseEntity<UserDTO> updateUser(@PathVariable Long id, @RequestBody UserDTO userDto) {
		UserDTO user = this.userService.updateUser(id, userDto);
		return ResponseEntity.ok(user);
	}

	@DeleteMapping(path = "/{id}")
	public ResponseEntity<UserDTO> deleteUser(@PathVariable Long id) {
		UserDTO user = this.userService.deleteUser(id);
		return ResponseEntity.ok(user);
	}

}
