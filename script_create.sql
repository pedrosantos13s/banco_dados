/* Criar Tabelas */
CREATE TABLE professor
(
    id INTEGER NOT NULL PRIMARY KEY,
    nome TEXT,
    monitorado TEXT
);

CREATE TABLE turma
(
    cod_turma TEXT,
    professor_id INTEGER,
    monitor TEXT,
    FOREIGN KEY (professor_id) REFERENCES professor(id),
    PRIMARY KEY(professor_id)
);

CREATE TABLE aluno
(
    nota INTEGER,
    ser_monitor INTEGER,
    turma_id INTEGER,
    FOREIGN KEY(turma_id) REFERENCES turma(id),
    PRIMARY KEY(turma_id)
);

/* Inserir professor */
INSERT INTO professor
    (id, nome, monitorado)
VALUES
    ("1", "Ricarth", "rrsl");

INSERT INTO professor
    (id, nome, monitorado)
VALUES
    ("2", "Fernando", "fhac");

/* Inserir Turmas */

/*INSERT INTO turma
    (cod_turma, professor_id, monitor)
VALUES
    ("Python", "1", "rrsl");

INSERT INTO turma
    (cod_turma, professor_id, monitor)
VALUES
    ("Python2", "2", "fhac");*/

/* Inserir aluno */

/*INSERT INTO aluno
    (nota, ser_monitor, turma_id)
VALUES
    ("8", "0", "1");*/