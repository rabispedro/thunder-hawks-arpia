CREATE TABLE tb_especialidade (
		id SERIAL UNIQUE NOT NULL,
		nome TEXT NOT NULL,
	
		PRIMARY KEY(id)
);

CREATE TABLE tb_professor (
		id SERIAL UNIQUE NOT NULL,
		id_especialidade INT REFERENCES tb_especialidade(id),
		nome TEXT NOT NULL,
		data_nascimento TIMESTAMP NOT NULL,
	
	PRIMARY KEY(id)
);

CREATE TABLE tb_turma (
		id SERIAL UNIQUE NOT NULL,
		id_professor INT REFERENCES tb_professor(id),
		nome TEXT NOT NULL,
		turno TEXT NOT NULL,
		serie TEXT NOT NULL,
	
		PRIMARY KEY (id)
);

CREATE TABLE tb_aluno (
		id SERIAL UNIQUE NOT NULL,
		id_turma INT REFERENCES tb_turma(id),
		nome TEXT NOT NULL,
		matricula UUID UNIQUE NOT NULL,
		nome_pai TEXT,
		nome_mae TEXT,
		sexo TEXT,
		data_nascimento TIMESTAMP NOT NULL,
		data_matricula TIMESTAMP NOT NULL,
	
		PRIMARY KEY(id)
);

INSERT INTO tb_especialidade(nome)
VALUES
	('Matemática'),
	('História'),
	('Geografia'),
	('Português'),
	('Química'),
	('Física'),
	('Redação'),
	('Educação Física'),
	('Filosofia'),
	('Sociologia');

INSERT INTO tb_professor(id_especialidade, nome,data_nascimento)
VALUES
	(1, 'Macy Shannon','1956-05-15 00:17:28'),
	(2, 'Basia Franklin','1980-08-31 19:33:36'),
	(3, 'Nasim Reeves','1996-05-27 14:06:16'),
	(4, 'Ronan Houston','1970-06-20 18:38:44'),
	(5, 'Phoebe Burks','1965-08-19 23:46:13'),
	(6, 'Iola Luna','1940-02-18 18:06:42'),
	(7, 'Alan Swanson','1958-04-15 21:12:01'),
	(8, 'Kiara Clayton','1979-06-08 02:55:20'),
	(9, 'Malcolm Hanson','1989-02-21 18:07:46'),
	(10, 'Joel Emerson','1990-12-28 00:26:40');

INSERT INTO tb_turma(id_professor,nome,turno,serie)
VALUES
	(10,'1A','vespertino','primeira_serie'),
	(9,'2A','matutino','segunda_serie'),
	(8,'1B','matutino','primeira_serie'),
	(7,'5A','matutino','quinta_serie'),
	(6,'7A','vespertino','setima_serie'),
	(5,'8A','noturno','oitava_serie'),
	(4,'2B','noturno','segunda_serie'),
	(3,'1C','vespertino','primeira_serie'),
	(2,'6A','matutino','sexta_serie'),
	(1,'5B','noturno','quinta_serie');

