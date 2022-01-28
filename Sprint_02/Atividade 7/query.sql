-- 1 Retornar todos alunos ordenados por turmas , por nome em ordem alfabetica

SELECT
		tb_aluno.id_turma,
		tb_aluno.nome
FROM
		tb_aluno
INNER JOIN
		tb_turma
ON 
		tb_turma.id = tb_aluno.id_turma
ORDER BY
		tb_aluno.id_turma,
		tb_aluno.nome
		ASC;

-- FUNCIONANDO NA ATUALIZAÇÃO FEITA NO MOCK.SQL

-- 2) Retornar as turmas em que não existem alunos
SELECT 
	turma.id, 
    turma.nome, 
    turma.turno 
FROM 
	tb_turma turma
WHERE 
	ID NOT IN 
    	(SELECT 
         	id_turma 
         FROM 
         	tb_aluno);

-- FUNCIONANDO NA ATUALIZAÇÃO FEITA NO MOCK.SQL

-- 3) Retornar as especialidades dos professores que possuem turmas

SELECT
	prof.nome,
    espec.nome as especialidade
FROM
	tb_especialidade_professor ep
INNER JOIN 
	tb_professor prof 
ON 
	ep.id_professor = prof.id
INNER JOIN 
	tb_especialidade espec 
ON 
	ep.id_especialidade = espec.id;

-- FUNCIONANDO NA ATUALIZAÇÃO FEITA NO MOCK.SQL
-- POREM FALTA FAZER O WHERE, PRA VALIDAR A AFIRMAÇÃO "professores que possuem turmas"

-- 4) Retornar a idade média dos professores que possuem turma

WITH tb_temporaria (idade) AS
(
	SELECT 
	EXTRACT(year FROM age(data_nascimento))
    FROM 
  		tb_professor
  	WHERE
		ID IN (SELECT id_professor FROM tb_turma)
)
SELECT 
	AVG(idade) AS "Media idade dos professores que possuem turmas" 
FROM 
	tb_temporaria;

-- FUNCIONANDO NA ATUALIZAÇÃO FEITA NO MOCK.SQL

-- 5) Retornar a quantidade de alunos de cada sexo por turma

SELECT
	trm.nome as turma,
(SELECT COUNT(*) 
 FROM 
 	tb_aluno 
 WHERE 
 	id_turma = trm.id AND sexo = 'masculino') AS masculino,
(SELECT COUNT(*) 
 FROM 
 	tb_aluno 
 WHERE 
 	id_turma = trm.id AND sexo = 'feminino') AS feminino
 FROM tb_turma trm;

 -- FUNCIONANDO NA ATUALIZAÇÃO FEITA NO MOCK.SQL
