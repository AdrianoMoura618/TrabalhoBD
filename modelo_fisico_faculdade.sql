-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE aluno (
data_nascimento_1_1 DATETIME,
matricula_aluno_1_1 NUMERIC(10),
nome_aluno_1_1 VARCHAR(10),
email_aluno_1_1 VARCHAR(10),
id_aluno_1_1 NUMERIC(10) PRIMARY KEY,
telefone_aluno_1_1 NUMERIC(10)
)

CREATE TABLE curso (
id_curso_1_1 NUMERIC(10) PRIMARY KEY,
nome_curso_1_1 VARCHAR(10),
duracao_1_1 NUMERIC(10)
)

CREATE TABLE disciplina (
id_disciplina_1_1 NUMERIC(10),
carga_horaria_1_1 NUMERIC(10),
nome_disciplina_1_1 VARCHAR(10),
id_curso_2_1 NUMERIC(10),
PRIMARY KEY(id_disciplina_1_1,id_curso_2_1)
)

CREATE TABLE nota (
id_aluno_2_1 NUMERIC(10),
id_turma_1_1 NUMERIC(10),
nota_final_1_1 NUMERIC(10),
id_nota_1_1 NUMERIC(10),
PRIMARY KEY(id_aluno_2_1,id_turma_1_1,id_nota_1_1)
)

CREATE TABLE professor (
id_professor_1_1 NUMERIC(10) PRIMARY KEY,
matricula_professor_1_1 NUMERIC(10),
email_1_1 VARCHAR(10),
especialidades_1_1 VARCHAR(10),
nome_professor_1_1 VARCHAR(10)
)

CREATE TABLE turma (
id_professor_2_1 NUMERIC(10),
id_disciplina_2_1 NUMERIC(10),
semestre_1_1 NUMERIC(10),
ano_1_1 NUMERIC(10),
id_turma_2_1 NUMERIC(10),
PRIMARY KEY(id_professor_2_1,id_disciplina_2_1,id_turma_2_1)
)

CREATE TABLE estuda (
id_curso_1_1 NUMERIC(10),
id_aluno_1_1 NUMERIC(10),
FOREIGN KEY(id_curso_1_1) REFERENCES curso (id_curso_1_1),
FOREIGN KEY(id_aluno_1_1) REFERENCES aluno (id_aluno_1_1)
)

CREATE TABLE mantem (
id_curso_1_1 NUMERIC(10),
id_disciplina_1_1 NUMERIC(10),
id_curso_2_1 NUMERIC(10),
FOREIGN KEY(id_curso_1_1) REFERENCES curso (id_curso_1_1),
FOREIGN KEY(id_curso_2_1,,) REFERENCES disciplina (id_disciplina_1_1,id_curso_2_1)
)

CREATE TABLE possui (
id_professor_2_1 NUMERIC(10),
id_disciplina_2_1 NUMERIC(10),
id_turma_2_1 NUMERIC(10),
id_disciplina_1_1 NUMERIC(10),
id_curso_2_1 NUMERIC(10),
FOREIGN KEY(id_turma_2_1,,,) REFERENCES turma (id_professor_2_1,id_disciplina_2_1,id_turma_2_1),
FOREIGN KEY(id_curso_2_1,,) REFERENCES disciplina (id_disciplina_1_1,id_curso_2_1)
)

CREATE TABLE contempla (
id_professor_2_1 NUMERIC(10),
id_disciplina_2_1 NUMERIC(10),
id_turma_2_1 NUMERIC(10),
id_aluno_2_1 NUMERIC(10),
id_turma_1_1 NUMERIC(10),
id_nota_1_1 NUMERIC(10),
FOREIGN KEY(id_turma_2_1,,,) REFERENCES turma (id_professor_2_1,id_disciplina_2_1,id_turma_2_1),
FOREIGN KEY(id_nota_1_1,,,) REFERENCES nota (id_aluno_2_1,id_turma_1_1,id_nota_1_1)
)

CREATE TABLE leciona (
id_professor_2_1 NUMERIC(10),
id_disciplina_2_1 NUMERIC(10),
id_turma_2_1 NUMERIC(10),
id_professor_1_1 NUMERIC(10),
FOREIGN KEY(id_turma_2_1,,,) REFERENCES turma (id_professor_2_1,id_disciplina_2_1,id_turma_2_1),
FOREIGN KEY(id_professor_1_1) REFERENCES professor (id_professor_1_1)
)

CREATE TABLE pertence (
id_professor_2_1 NUMERIC(10),
id_disciplina_2_1 NUMERIC(10),
id_turma_2_1 NUMERIC(10),
id_aluno_1_1 NUMERIC(10),
FOREIGN KEY(id_turma_2_1,,,) REFERENCES turma (id_professor_2_1,id_disciplina_2_1,id_turma_2_1),
FOREIGN KEY(id_aluno_1_1) REFERENCES aluno (id_aluno_1_1)
)

CREATE TABLE gera (
id_aluno_2_1 NUMERIC(10),
id_turma_1_1 NUMERIC(10),
id_nota_1_1 NUMERIC(10),
id_aluno_1_1 NUMERIC(10),
FOREIGN KEY(id_nota_1_1,,,) REFERENCES nota (id_aluno_2_1,id_turma_1_1,id_nota_1_1),
FOREIGN KEY(id_aluno_1_1) REFERENCES aluno (id_aluno_1_1)
)

