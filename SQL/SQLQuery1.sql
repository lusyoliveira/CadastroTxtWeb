CREATE TABLE Marca (Id INT IDENTITY(1,1) PRIMARY KEY,
                    Nome NVARCHAR(20) NOT NULL);
/*identity: auto incremento para indice*/
 
CREATE TABLE Carro (Id INT IDENTITY(1,1) PRIMARY KEY,
                    Nome NVARCHAR(20) NOT NULL,
					Ano INT NOT NULL,
					IdMarca INT NOT NULL,
					FOREIGN KEY (IdMarca) REFERENCES Marca(Id));

INSERT INTO Marca (Nome) VALUES ('Ford');
INSERT INTO Marca (Nome) VALUES ('Chevrolet');
INSERT INTO Marca (Nome) VALUES ('Volkswagem');
INSERT INTO Marca (Nome) VALUES ('Mercedez');

SELECT * FROM Marca;

INSERT INTO Carro (Nome, Ano, IdMarca) VALUES ('Focus',2014, 1);
INSERT INTO Carro (Nome, Ano, IdMarca) VALUES ('Onix', 2014, 2);
INSERT INTO Carro (Nome, Ano, IdMarca) VALUES ('Fuscar', 1970, 3);
INSERT INTO Carro (Nome, Ano, IdMarca) VALUES ('Ranger',2014, 1);

SELECT * FROM Carro;

SELECT A.Nome NOME_CARRO,
       B.Nome MARCA
FROM Carro A
     JOIN Marca B ON B.Id = A.IdMarca
WHERE B.Nome = 'Ford';

SELECT * FROM Carro A
    JOIN Marca B ON B.Id=A.IdMarca
	WHERE ANO < 2010
	AND B.Nome = 'Volkswagem';

SELECT A.Nome, COUNT(B.Id) QUANTIDADE
  FROM Marca A
  JOIN Carro B ON B.IdMarca = A.Id
  GROUP BY A.Nome;

INSERT INTO Carro (Nome, Ano, IdMarca) VALUES ('Gol', 2013, 3);

SELECT * FROM Marca A 
   JOIN Carro B ON B.IdMarca = a.Id;

ALTER TABLE Carro
ADD Placa nchar(8) null;

Select * from Carro

UPDATE Carro SET Placa = 'KNG-1263' 
    WHERE Id = 5;

DELETE FROM Carro 
   WHERE Id = 3;

SELECT * FROM Carro 
  ORDER BY NOME DESC

DROP TABLE MARCA