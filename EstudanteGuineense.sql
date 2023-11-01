CREATE DATABASE EstudanteGuineense;
USE EstudanteGuineense;
    
CREATE TABLE DadosUniversidade(
	DadosID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Universidade VARCHAR(200) NOT NULL,
    Curso VARCHAR(200) NOT NULL,
    Nivel VARCHAR (100) NOT NULL,
    Continente VARCHAR (50) NOT NULL,
    Pais VARCHAR (100) NOT NULL,
    Sigla CHAR (5)
);

CREATE TABLE estudante(
	estudanteID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    DadosID_FK INT,
	Nome VARCHAR (150) NOT NULL,
	SobreNome VARCHAR (150) NOT NULL,
	Genero CHAR (1) NOT NULL,
	DataInicio DATE NOT NULL,
	DataPrevisao DATE,
	DataConclusao DATE,
	Email VARCHAR (150),
	Cidade VARCHAR (150),
    CONSTRAINT FK_DadosUniversidade_DadosID FOREIGN KEY (DadosID_FK) REFERENCES DadosUniversidade(DadosID)
);

#INSERINDO DADOS DA TABELA DadosUniversidade:
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES ('UNILAB','Engenharia de Energias', 'Graduação','America de Sul','Brasil','BR');
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES('UFABC','Engenharia Elétrica','Pós-Graduação','America de Sul','Brasil','BR');
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES ('UFRGS','Agronómia','Pós_Graduação','America de Sul','Brasil','BR');
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES ('ISCTE','Sociológia','Graduação','Europeu','Portugal','PT');
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES ('ISCTE','Sociológia','Pós-Graduação','Europeu','Portugal','PT');
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES ('UNILAB','Humanidades', 'Bacharel','America de Sul','Brasil','BR');
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES ('UFSC','Enfermagem', 'Pós-Graduação','America de Sul','Brasil','BR');
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES ('USP','Contabilidade','Graduação','America de Sul','Brasil','BR');
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES ('UCAD','Ciência de computação','Graduação','Africa','Senegal','SN');
INSERT INTO DadosUniversidade(Universidade,Curso,Nivel,Continente,Pais,Sigla)
VALUES ('UFSC','Engenharia de Computação','Graduação','America de Sul','Brasil','BR');

#INSERINDO DADOS DA TABELA estudante:
INSERT INTO estudante(Nome, SobreNome, Genero, DataInicio,  DataConclusao, Email, Cidade)
VALUES ('Ramas','Gomes','M','2015-05-25', '2021-09-27','Gomesdacosta@gmail.com', 'Redenção');
INSERT INTO estudante(Nome, SobreNome, Genero, DataInicio, DataPrevisao, DataConclusao, Email, Cidade)
VALUES ('Alberto','Sanha','M','2015-01-04', '2020-01-04', '2023-10-28','sanhaAlberto@hotmail.com','Florianópolis');
INSERT INTO estudante (Nome, SobreNome, Genero, DataInicio, DataPrevisao, Email, Cidade)
VALUES('Tamires João','da Costa','F','2023-07-28','2028-07-28','tamires1991@gmail.com','Porto Alegre');
INSERT INTO estudante(Nome, SobreNome, Genero, DataInicio, DataPrevisao, Email, Cidade)
VALUES ('Dingana Sabastião','Mango','M', '2022-02-23', '2027-02-23', 'mango1245@hotmail.com','Lisboa');
INSERT INTO estudante(Nome, SobreNome, Genero, DataInicio,  DataConclusao, Email, Cidade)
VALUES ('Maira da Silva','Gomes','F','2020-10-13', '2023-09-27','mairadasilva@gmail.com', 'Porto');
INSERT INTO estudante(Nome, SobreNome, Genero, DataInicio, DataPrevisao, Email, Cidade)
VALUES ('Aminata Amadu','Balde','F','2023-01-04', '2025-05-23','aminata@hotmail.com','Redenção');
INSERT INTO estudante(Nome, SobreNome, Genero, DataInicio, DataConclusao, Email, Cidade)
VALUES ('Tugna','na Yala','M','2017-06-04', '2024-10-28','yala2020@hotmail.com','Florianópolis');
INSERT INTO estudante (Nome, SobreNome, Genero, DataInicio, DataConclusao, Email, Cidade)
VALUES ('Quintino dos Santos','Dias','M','2000-07-23','2005-11-19','mae2005@hotmail.com','São Paulo');
INSERT INTO estudante (Nome, SobreNome, Genero, DataInicio, DataPrevisao, DataConclusao, Email, Cidade)
VALUES ('Fernando Domingas','Nancassa','M','2018-05-23','2022-05-23','2022-08-29','nancassadomingas91@.com','Dakar');
INSERT INTO estudante (Nome, SobreNome, Genero, DataInicio, DataPrevisao, DataConclusao, Email, Cidade)
VALUES ('Maristela Djenabu','Balde','F','2000-05-23','2005-05-23','2008-10-07','mariasousa@gmail.com','Florianópolis');