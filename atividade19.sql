Use Portugal;
 -- Ex. 2
SELECT * FROM portugal.código_postal;
 -- Ex. 3
ALTER TABLE Cidades RENAME TO Código_Postal;
 -- Ex. 4
ALTER TABLE Código_postal RENAME COLUMN Area to AreaKm2;
 -- Ex. 5
SELECT AVG(AreaKm2)
AS MediaKm
FROM Código_postal;
 -- Ex. 6
SELECT Nome, Codigo_Postal FROM Código_postal WHERE AreaKm2 > 80;
 -- Ex. 7
SELECT * FROM Código_postal WHERE Codigo_Postal = 7830;