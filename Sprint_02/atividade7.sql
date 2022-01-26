CREATE TABLE tb_especialidade (
    id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE tb_professor (
    id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    id_especialidade INT REFERENCES tb_especialidade(id),
    nome TEXT NOT NULL,
    data_nascimento TIMESTAMP NOT NULL
);

CREATE TABLE tb_turma (
    id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    id_professor INT REFERENCES tb_professor(id),
    nome TEXT NOT NULL,
    turno TEXT NOT NULL,
    serie TEXT NOT NULL
);

CREATE TABLE tb_aluno (
    id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    id_turma INT REFERENCES tb_turma(id),
    nome TEXT NOT NULL,
    matricula UUID UNIQUE NOT NULL,
    nome_pai TEXT,
    nome_mae TEXT,
    sexo TEXT,
    data_nascimento TIMESTAMP NOT NULL,
    data_matricula TIMESTAMP NOT NULL      
);

INSERT INTO tb_especialidade(nome) VALUES('Matemática');
INSERT INTO tb_especialidade(nome) VALUES('História');
INSERT INTO tb_especialidade(nome) VALUES('Geografia');
INSERT INTO tb_especialidade(nome) VALUES('Português');
INSERT INTO tb_especialidade(nome) VALUES('Química');
INSERT INTO tb_especialidade(nome) VALUES('Física');
INSERT INTO tb_especialidade(nome) VALUES('Redação');
INSERT INTO tb_especialidade(nome) VALUES('Educação Física');