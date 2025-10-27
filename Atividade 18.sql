CREATE DATABASE armazem;
USE armazem;

CREATE TABLE produtos (
		ID_produtos INT PRIMARY KEY,
		cod_prod INT NOT NULL,
		valor_unit DECIMAL(10,2) NOT NULL,
		quantidade INT NOT NULL,
        desconto INT
);

INSERT INTO produtos
VALUES
(1,5,30.00,10,15),
(2,4,10.00,12,5),
(3,1,25.00,13,5),
(4,2,13.50,15,5),
(5,3,15.00,3, NULL),
(6,5,30.00,6, NULL),
(7,1,25.00,22,15),
(8,3,15.00,25,20),
(9,1,25.00,10,3),
(10,2,13.50,10,4),
(11,3,15.00,10,4),
(12,5,30.00,10,1)
;

SELECT cod_prod, valor_unit FROM produtos WHERE desconto IS NULL;

SET SQL_SAFE_UPDATES = 0;

UPDATE produtos
SET desconto = 0
WHERE desconto IS NULL;

SELECT id_produto, quantidade FROM produtos WHERE desconto > 10 AND desconto < 20;

SELECT valor_unit, quantidade FROM produtos WHERE cod_prod = 2;
