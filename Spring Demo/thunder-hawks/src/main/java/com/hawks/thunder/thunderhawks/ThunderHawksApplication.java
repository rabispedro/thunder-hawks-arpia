package com.hawks.thunder.thunderhawks;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ThunderHawksApplication {

	public static void main(String[] args) {
		// EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("thunder-hawks-jpa");
		// EntityManager entityManager = entityManagerFactory.createEntityManager();

		SpringApplication.run(ThunderHawksApplication.class, args);

		// entityManager.close();
		// entityManagerFactory.close();
	}

}
