CREATE DATABASE escola;

USE escola;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    curso VARCHAR(50)
);

    INSERT INTO alunos (nome, idade, curso)
    VALUES
    ('Maria', 20, 'Matemática'),
    ('João', 22, 'História'),
    ('Ana', 19, 'Computação');

    SELECT * FROM alunos; -- Todos os dados
    SELECT nome, curso FROM alunos; -- Somente nome e curso
    SELECT * FROM alunos WHERE idade > 20; -- Cond

    UPDATE alunos
    SET curso = 'Engenharia'
    WHERE nome = 'Ana';

    DELETE FROM alunos
    WHERE id = 2;

    DROP TABLE alunos;
    DROP DATABASE escola; ( excluir obanco de dados)
    