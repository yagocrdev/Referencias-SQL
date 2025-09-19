CREATE DATABASE escola;

USE escola;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    curso VARCHAR(50)
);

INSERT INTO alunos
    ( nome, idade, curso )
VALUES
    ( 'Maria', 20, 'Matemática' ),
    ( 'João', 22, 'História' ),
    ( 'Ana', 19, 'Computação' );

-- SELECIONA TUDO DA TABELA alunos
SELECT  *
FROM    alunos;

-- SELECIONA COLUNAS nome, curso DA TABELA alunos
SELECT  nome, curso
FROM    alunos;

-- SELECIONA TUDO DA TABELA ALUNOS DESDE QUE idade SEJA MAIOR (>) QUE 20
SELECT  *
FROM    alunos
WHERE   idade > 20;

-- ATUALIZA A COLUNA curso DA TABELA alunos ONDE O NOME SEJA IGUAL A 'Ana'
UPDATE  alunos
SET     curso = 'Engenharia'
WHERE   nome = 'Ana';

DELETE
FROM    alunos
WHERE   id = 2;

DROP TABLE alunos;
DROP DATABASE escola; ( excluir obanco de dados)
