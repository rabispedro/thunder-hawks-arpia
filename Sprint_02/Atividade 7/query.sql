-- 1 Retornar todos alunos ordenados por turmas , por nome em ordem alfabetica

SELECT
		tb_aluno.id_turma,
		tb_aluno.nome
FROM
		tb_aluno,
INNER JOIN
		tb_turma
ON 
		tb_turma.id = tb_aluno.id_turma
ORDER BY
		tb_aluno.id_turma,
		tb_aluno.nome
		ASC;

-- 2) Retornar as turmas em que não existem alunos
SELECT
		tb_turma.nome
FROM
		tb_aluno,
		tb_turma
WHERE
	tb_aluno.id_turma is NULL;

-- 3) Retornar as especialidades dos professores que possuem turmas

SELECT
	tb_especialidade.nome,
    tb_professor.nome
FROM
	tb_especialidade,
	tb_turma
INNER JOIN
	tb_professor
ON
	tb_professor.id = tb_turma.id_professor
WHERE
	tb_turma.id_professor is not NULL AND
	tb_turma.id_professor = tb_professor.id AND
	tb_professor.id_especialidade = tb_especialidade.id;


