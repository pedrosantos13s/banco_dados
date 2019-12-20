/* Criar Tabelas */
CREATE TABLE aluno
(
    id INTEGER NOT NULL PRIMARY KEY,
    nome TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE turma
(
    id INTEGER NOT NULL PRIMARY KEY,
    cod_turma TEXT,
    nome TEXT
);

CREATE TABLE aluno_cursa_turma
(
    aluno_id INTEGER,
    turma_id INTEGER,
    semestre TEXT,
    FOREIGN KEY(aluno_id) REFERENCES aluno(id),
    FOREIGN KEY(turma_id) REFERENCES turma(id),
    PRIMARY KEY(aluno_id, turma_id)
);

/* Inserir Alunos */
INSERT INTO aluno
    (nome, telefone, email)
VALUES
    ("Ricarth", "9696", "rrsl");

INSERT INTO aluno
    (nome, telefone, email)
VALUES
    ("Fernando", "5555", "fhac");

INSERT INTO aluno
    (nome, telefone, email)
VALUES
    ("Warley", "1234", "wss");

/* Inserir Turmas */
INSERT INTO turma
    (cod_turma, nome)
VALUES
    ("IF969", "Introdução à Programação");

INSERT INTO turma
    (cod_turma, nome)
VALUES
    ("IF968", "Algorítmos e Estrutura de Dados");