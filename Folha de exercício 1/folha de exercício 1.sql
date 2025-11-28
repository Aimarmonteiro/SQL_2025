CREATE DATABASE Escola;
USE Escola;


CREATE TABLE Estudante (
	ID_estudantes INT PRIMARY KEY,
    nome VARCHAR(30),
    Idade INT,
    data_nascimento DATE
);

INSERT INTO Estudante
VALUES
(1,'Aimar',17,'2008-01-14'),
(2,'Gaybriel',18,'2007-01-10'),
(3,'Miranda',18,'2007-04-17'),
(4,'Diego',19,'2006-02-05'),
(5,'Emanuel',20,'2005-03-01');

INSERT INTO Estudante
VALUES
(6,'Claudio',12,'2013-04-15'),
(7,'Luan', 35,'1990-02-12');

CREATE TABLE Clientes (
	id_clientes INT PRIMARY KEY,
    Nome VARCHAR(20),
    Morada VARCHAR(30),
    Contacto INT UNIQUE,
    criado_por_funcID INT,
    FOREIGN KEY (criado_por_funcID)
			REFERENCES funcionario(funcionarioID)
);

CREATE TABLE funcionario (
	funcionarioID INT PRIMARY KEY,
    Nome VARCHAR(20),
    Morada VARCHAR(30),
    Contacto INT UNIQUE
);
DROP TABLE Clientes;
DROP TABLE funcionario;

SELECT * FROM Clientes, Funcionario;

INSERT INTO Clientes
VALUES
		(1, 'Tinoni', 'Amadora', 99997, 10),
		(2, 'Tino', 'Mamadora', 999999, 20),
        (3, 'Tin', 'Apelação', 99994, 30);
  
  
INSERT INTO Funcionario
VALUES
		(10, 'Tinonie', 'Loures', 9999997),
		(20, 'Tinoi', 'Oriente', 99999991),
        (30, 'Tini', 'Coimbra', 99999990);

SELECT * FROM Clientes, Funcionario;

-- CROSS JOIN --
SELECT * 
FROM Clientes
CROSS JOIN Funcionario;

-- INNER JOIN --
SELECT *
FROM Clientes
INNER JOIN Funcionario
ON criado_por_funcID = FuncionarioID;

-- LEFT OUTER JOIN --
SELECT *
FROM Clientes
LEFT JOIN funcionario
ON Criado_por_funcID = funcionarioID;

-- RIGHT OUTER JOIN --
SELECT *
FROM Clientes
RIGHT JOIN funcionario
ON Criado_por_funcID = funcionarioID; 

INSERT INTO Clientes
VALUES
		(4, 'Tinoni', 'Amadora', 99996, 4);

INSERT INTO funcionario
VALUES
		(4, 'Tinoni', 'Amadora', 99997);

SELECT * FROM Clientes, funcionario;

USE armazem;
SELECT sum(valor_unit) AS Total_€
FROM produtos;

SELECT cod_prod, sum(valor_unit) AS Total_€ 
FROM produtos WHERE cod_prod = 3;


-- GROUP BY cod_prod;
