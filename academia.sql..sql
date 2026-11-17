USE academia;

SHOW TABLES;

CREATE TABLE atividade (
    id INT PRIMARY KEY AUTO_INCREMENT,
    atividade VARCHAR(45) NOT NULL
);

CREATE TABLE instrutor (
    rg INT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    nascimento DATE,
    titulacao VARCHAR(45),
    telefone VARCHAR(45)
);

CREATE TABLE turma (
    id INT PRIMARY KEY AUTO_INCREMENT,
    quant_alunos INT,
    horario_aula DATETIME,
    duracao_aula DATETIME,
    data_inicio DATE,
    data_fim DATE,
    atividade INT,
    id_instrutor INT,
    id_monitor INT
);

CREATE TABLE aluno (
    matricula INT PRIMARY KEY AUTO_INCREMENT,
    data_matricula DATE,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45),
    telefone VARCHAR(45),
    nascimento DATE,
    altura FLOAT,
    peso FLOAT,
    id_turma INT NULL
);

CREATE TABLE monitor (
    id_aluno INT PRIMARY KEY
);

CREATE TABLE registro (
    id_aluno INT,
    id_turma INT,
    ausencia INT,
    id_registro INT PRIMARY KEY AUTO_INCREMENT
);