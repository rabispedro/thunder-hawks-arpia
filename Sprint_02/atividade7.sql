CREATE TABLE tb_especialidade (
    id UUID UNIQUE NOT NULL PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE tb_professor (
    id UUID NOT NULL PRIMARY KEY,
    id_especialidade UUID REFERENCES tb_especialidade(id),
    nome TEXT NOT NULL,
    data_nascimento TIMESTAMP NOT NULL
);

CREATE TABLE tb_turma (
    id UUID UNIQUE NOT NULL PRIMARY KEY,
    id_professor UUID REFERENCES tb_professor(id),
    nome TEXT NOT NULL,
    turno TEXT NOT NULL,
    serie TEXT NOT NULL
);

CREATE TABLE tb_aluno (
	id UUID NOT NULL PRIMARY KEY,
    id_turma UUID REFERENCES tb_turma(id),
    nome TEXT NOT NULL,
    matricula TEXT NOT NULL,
    nome_pai TEXT,
    nome_mae TEXT,
    sexo TEXT,
    data_nascimento TIMESTAMP NOT NULL,
    data_matricula TIMESTAMP NOT NULL  	
);

INSERT INTO tb_especialidade(id, nome) VALUES(gen_random_uuid(), 'Matemática')

