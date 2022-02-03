package com.hawks.thunder.thunderhawks.controllers.exceptions;

import java.time.Instant;

import javax.servlet.http.HttpServletRequest;

import com.hawks.thunder.thunderhawks.services.exceptions.ObjectNotFoundException;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ControllerExceptionHandler {
	@ExceptionHandler(ObjectNotFoundException.class)
	public ResponseEntity<StandardError> objectNotFound(
		ObjectNotFoundException error,
		HttpServletRequest request
	) {
		StandardError objectNotFoundError = new StandardError(
			HttpStatus.NOT_FOUND.value(),
			error.getMessage(),
			Instant.now()
		);

		return ResponseEntity
			.status(HttpStatus.NOT_FOUND)
			.body(objectNotFoundError)
		;
	}
}
