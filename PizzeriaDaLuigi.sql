--CREATE DATABASE PizzeriaDaLuigi

--CREATE TABLE Pizza(
--CodPizza VARCHAR(10),
--Nome VARCHAR(20) NOT NULL,
--Prezzo DECIMAL(6,2) NOT NULL,
--CONSTRAINT Pk_Pizza PRIMARY KEY(CodPizza),
--CONSTRAINT Ck_Prezzo CHECK(Prezzo > 0)
--)

--CREATE TABLE Ingrediente(
--CodIngrediente VARCHAR(10),
--Nome VARCHAR(20) NOT NULL,
--Costo DECIMAL(6,2) NOT NULL,
--Scorte INT NOT NULL,
--CONSTRAINT Pk_Ingrediente PRIMARY KEY(CodIngrediente),
--CONSTRAINT Ck_Costo CHECK(Costo > 0),
--CONSTRAINT Ck_Scorte CHECK(Scorte >=0)
--)

--CREATE TABLE Composizione(
--CodPizza VARCHAR(10),
--CodIngrediente VARCHAR(10),
--CONSTRAINT Pk_Composizione PRIMARY KEY(CodPizza,CodIngrediente),
--CONSTRAINT Fk_Pizza FOREIGN KEY(CodPizza) REFERENCES Pizza(CodPizza),
--CONSTRAINT Fk_Ingrediente FOREIGN KEY(CodIngrediente) REFERENCES Ingrediente(CodIngrediente)
--)

--INSERT INTO Pizza VALUES('PZ001','Margherita','5')
--INSERT INTO Pizza VALUES('PZ002','Bufala','7')
--INSERT INTO Pizza VALUES('PZ003','Diavola','6')
--INSERT INTO Pizza VALUES('PZ004','Quattro Stagioni','6.50')
--INSERT INTO Pizza VALUES('PZ005','Porcini','7')
--INSERT INTO Pizza VALUES('PZ006','Dioniso','8')
--INSERT INTO Pizza VALUES('PZ007','Ortolana','8')
--INSERT INTO Pizza VALUES('PZ008','Patate e salsiccia','6')
--INSERT INTO Pizza VALUES('PZ009','Pomodorini','6')
--INSERT INTO Pizza VALUES('PZ010','Quattro Formaggi','7.50')
--INSERT INTO Pizza VALUES('PZ011','Caprese','7.50')
--INSERT INTO Pizza VALUES('PZ012','Zeus','7.50')

--INSERT INTO Ingrediente VALUES('INGR01','Pomodoro','2.50',10)
--INSERT INTO Ingrediente VALUES('INGR02','Mozzarella','2.10',10)
--INSERT INTO Ingrediente VALUES('INGR03','Mozzarella di bufala','3.50',5)
--INSERT INTO Ingrediente VALUES('INGR04','Spianata piccante','2.80',1)
--INSERT INTO Ingrediente VALUES('INGR05','Funghi','2',11)
--INSERT INTO Ingrediente VALUES('INGR06','Carciofi','3.50',10)
--INSERT INTO Ingrediente VALUES('INGR07','Prosciutto Cotto','1.50',8)
--INSERT INTO Ingrediente VALUES('INGR08','Olive','0.50',12)
--INSERT INTO Ingrediente VALUES('INGR09','Funghi porcini','4.50',5)
--INSERT INTO Ingrediente VALUES('INGR10','Stracchino','1.20',1)
--INSERT INTO Ingrediente VALUES('INGR11','Speck','5',3)
--INSERT INTO Ingrediente VALUES('INGR12','Rucola','1.50',4)
--INSERT INTO Ingrediente VALUES('INGR13','Grana','0.50',9)
--INSERT INTO Ingrediente VALUES('INGR14','Verdure di stagione','5.40',10)
--INSERT INTO Ingrediente VALUES('INGR15','Patate','1.30',3)
--INSERT INTO Ingrediente VALUES('INGR16','Salsiccia','3',10)
--INSERT INTO Ingrediente VALUES('INGR17','Pomodorini','2.50',1)
--INSERT INTO Ingrediente VALUES('INGR18','Provola','2',3)
--INSERT INTO Ingrediente VALUES('INGR19','Gorgonzola','4.50',2)
--INSERT INTO Ingrediente VALUES('INGR20','Pomodoro fresco','4.50',5)
--INSERT INTO Ingrediente VALUES('INGR21','Basilico','0.50',2)
--INSERT INTO Ingrediente VALUES('INGR22','Bresaola','6',4)
--INSERT INTO Ingrediente VALUES('INGR23','Ricotta','5',4)

--INSERT INTO Composizione VALUES ('PZ001','INGR01')
--INSERT INTO Composizione VALUES ('PZ001','INGR02')
--INSERT INTO Composizione VALUES ('PZ002','INGR01')
--INSERT INTO Composizione VALUES ('PZ002','INGR03')
--INSERT INTO Composizione VALUES ('PZ003','INGR01') --DIAVOLA
--INSERT INTO Composizione VALUES ('PZ003','INGR02')
--INSERT INTO Composizione VALUES ('PZ003','INGR04')
--INSERT INTO Composizione VALUES ('PZ004','INGR01') --4 STAGIONI
--INSERT INTO Composizione VALUES ('PZ004','INGR02')
--INSERT INTO Composizione VALUES ('PZ004','INGR05')
--INSERT INTO Composizione VALUES ('PZ004','INGR06')
--INSERT INTO Composizione VALUES ('PZ004','INGR07')
--INSERT INTO Composizione VALUES ('PZ004','INGR08')
--INSERT INTO Composizione VALUES ('PZ005','INGR01')--PORCINI
--INSERT INTO Composizione VALUES ('PZ005','INGR02')
--INSERT INTO Composizione VALUES ('PZ005','INGR09')
--INSERT INTO Composizione VALUES ('PZ006','INGR01')--DIONISO
--INSERT INTO Composizione VALUES ('PZ006','INGR02')
--INSERT INTO Composizione VALUES ('PZ006','INGR10')
--INSERT INTO Composizione VALUES ('PZ006','INGR11')
--INSERT INTO Composizione VALUES ('PZ006','INGR12')
--INSERT INTO Composizione VALUES ('PZ006','INGR13')
--INSERT INTO Composizione VALUES ('PZ007','INGR01')--ORTOLANA
--INSERT INTO Composizione VALUES ('PZ007','INGR02')
--INSERT INTO Composizione VALUES ('PZ007','INGR14')
--INSERT INTO Composizione VALUES ('PZ008','INGR01')--PAT SALS
--INSERT INTO Composizione VALUES ('PZ008','INGR02')
--INSERT INTO Composizione VALUES ('PZ008','INGR15')
--INSERT INTO Composizione VALUES ('PZ008','INGR16')
--INSERT INTO Composizione VALUES ('PZ009','INGR02')--POMODORINI
--INSERT INTO Composizione VALUES ('PZ009','INGR17')
--INSERT INTO Composizione VALUES ('PZ009','INGR23')
--INSERT INTO Composizione VALUES ('PZ010','INGR02')--4 formaggi
--INSERT INTO Composizione VALUES ('PZ010','INGR18')
--INSERT INTO Composizione VALUES ('PZ010','INGR19')
--INSERT INTO Composizione VALUES ('PZ010','INGR13')
--INSERT INTO Composizione VALUES ('PZ011','INGR02') --CAPRESE
--INSERT INTO Composizione VALUES ('PZ011','INGR20')
--INSERT INTO Composizione VALUES ('PZ011','INGR21')
--INSERT INTO Composizione VALUES ('PZ012','INGR02') --ZEUS
--INSERT INTO Composizione VALUES ('PZ012','INGR22')
--INSERT INTO Composizione VALUES ('PZ012','INGR12')


---QUERY---

--1)Estrarre tutte le pizze con prezzo superiore a 6 euro
SELECT *
FROM Pizza p
WHERE p.Prezzo > '6'

--2)Estrarre la pizza/le pizze più costosa/e
SELECT *
FROM Pizza p
WHERE p.Prezzo >= (SELECT MAX(p.Prezzo)
					FROM Pizza p)

--3)Estrarre le pizze «bianche»
SELECT *
FROM Pizza p 
WHERE p.Nome NOT IN (SELECT p.Nome
								FROM Pizza p 
								JOIN Composizione c ON p.CodPizza = c.CodPizza
								JOIN Ingrediente i ON c.CodIngrediente = i.CodIngrediente
								WHERE i.Nome = 'Pomodoro')

--4)Estrarre le pizze che contengono funghi (di qualsiasi tipo)
SELECT p.*
FROM Pizza p 
JOIN Composizione c ON p.CodPizza = c.CodPizza
JOIN Ingrediente i ON c.CodIngrediente = i.CodIngrediente
WHERE i.Nome LIKE 'Funghi%'

---PROCEDURE---

--1)Inserimento di una nuova pizza (parametri: codPizza,nome, prezzo)
CREATE PROCEDURE InserisciPizza
@CodicePizza VARCHAR(10),
@NomePizza VARCHAR(20),
@PrezzoPizza DECIMAL(6,2)

AS
BEGIN
	BEGIN TRY
	INSERT INTO Pizza VALUES (@CodicePizza,@NomePizza,@PrezzoPizza)
	END TRY

	BEGIN CATCH
	SELECT ERROR_MESSAGE(), ERROR_LINE()
	END CATCH
END

EXECUTE InserisciPizza 'PZ013','Carpediem','8'

--2)Assegnazione di un ingrediente a una pizza (parametri: nome pizza, nomeingrediente)
CREATE PROCEDURE AggiungiIngredienteAPizza
@NomePizza VARCHAR(20),
@NomeIngrediente VARCHAR(20)

AS
BEGIN
	BEGIN TRY
	DECLARE @CodPizza VARCHAR(10)
	SELECT @CodPizza = p.CodPizza
	FROM Pizza p
	WHERE p.Nome = @NomePizza

	DECLARE @CodIngrediente VARCHAR(10)
	SELECT @CodIngrediente = i.CodIngrediente
	FROM Ingrediente i
	WHERE i.Nome = @NomeIngrediente

	INSERT INTO Composizione VALUES (@CodPizza,@CodIngrediente)
	END TRY

	BEGIN CATCH
	SELECT ERROR_MESSAGE(), ERROR_LINE()
	END CATCH
END

EXECUTE AggiungiIngredienteAPizza 'Carpediem','Mozzarella di bufala'
EXECUTE AggiungiIngredienteAPizza 'Carpediem','Pomodorini'
EXECUTE AggiungiIngredienteAPizza 'Carpediem','Basilico'
EXECUTE AggiungiIngredienteAPizza 'Carpediem','Rucola'
EXECUTE AggiungiIngredienteAPizza 'Carpediem','Funghi'

--3)Aggiornamento del prezzo di una pizza (parametri: nome pizza e nuovo prezzo)
CREATE PROCEDURE AggiornaPrezzoPizza
@NomePizza VARCHAR(20),
@NuovoPrezzo DECIMAL(6,2)

AS
BEGIN
	BEGIN TRY
	DECLARE @CodPizza VARCHAR(10)
	SELECT @CodPizza = p.CodPizza
	FROM Pizza p
	WHERE p.Nome = @NomePizza

	UPDATE Pizza SET Prezzo = @NuovoPrezzo WHERE CodPizza = @CodPizza
	END TRY

	BEGIN CATCH
	SELECT ERROR_MESSAGE(), ERROR_LINE()
	END CATCH
END

EXECUTE AggiornaPrezzoPizza 'Carpediem','8.50'

--4)Eliminazione di un ingrediente da una pizza (parametri: nome pizza, nomeingrediente)
CREATE PROCEDURE EliminaIngredientePizza
@NomePizza VARCHAR(20),
@NomeIngrediente VARCHAR(20)

AS
BEGIN
	BEGIN TRY
	DECLARE @CodPizza VARCHAR(10)
	SELECT @CodPizza = p.CodPizza
	FROM Pizza p
	WHERE p.Nome = @NomePizza

	DECLARE @CodIngrediente VARCHAR(10)
	SELECT @CodIngrediente = i.CodIngrediente
	FROM Ingrediente i
	WHERE i.Nome = @NomeIngrediente

	DELETE FROM Composizione WHERE CodPizza = @CodPizza AND CodIngrediente = @CodIngrediente
	END TRY

	BEGIN CATCH
	SELECT ERROR_MESSAGE(), ERROR_LINE()
	END CATCH
END

EXECUTE EliminaIngredientePizza 'Carpediem','Rucola'

--5)Incremento del 10% del prezzo delle pizze contenenti un ingrediente(parametro: nome ingrediente)
CREATE PROCEDURE IncrementoPizza
@NomeIngrediente VARCHAR(20)

AS
BEGIN
	BEGIN TRY

	DECLARE @CodIngrediente VARCHAR(10)
	SELECT @CodIngrediente = i.CodIngrediente
	FROM Ingrediente i
	WHERE i.Nome = @NomeIngrediente

	DECLARE @CodPizza VARCHAR(10)
	

	UPDATE Pizza SET Prezzo = (Prezzo*10/100)+Prezzo WHERE CodPizza IN(SELECT p.CodPizza
	FROM Pizza p 
	JOIN Composizione c ON p.CodPizza = c.CodPizza
	JOIN Ingrediente i ON c.CodIngrediente = i.CodIngrediente
	WHERE i.Nome = @NomeIngrediente)
	END TRY

	BEGIN CATCH
	SELECT ERROR_MESSAGE(), ERROR_LINE()
	END CATCH
END

EXECUTE IncrementoPizza 'Grana'


---FUNCTIONS---

--1)Tabella listino pizze ( NOME,prezzo)(parametri nessuno)
CREATE FUNCTION ListinoPizze()
RETURNS TABLE
AS
RETURN 
SELECT p.Nome,p.Prezzo
FROM Pizza p

SELECT * FROM ListinoPizze()

--2)Tabella listino pizze ( prezzo) contenenti un ingrediente (parametri nomeingrediente)
CREATE FUNCTION ListinoPizzeConIngrediente(@NomeIngrediente VARCHAR(20))
RETURNS TABLE
AS
RETURN 
SELECT p.Nome,p.Prezzo
FROM Pizza p
JOIN Composizione c ON c.CodPizza = p.CodPizza
JOIN Ingrediente i ON c.CodIngrediente = i.CodIngrediente
WHERE i.Nome = @NomeIngrediente

SELECT * FROM ListinoPizzeConIngrediente('Funghi')

--3)Tabella listino pizze ( prezzo) che non contengono un certo ingrediente(parametri nome ingrediente)
CREATE FUNCTION ListinoPizzeSenzaIngrediente(@NomeIngrediente VARCHAR(20))
RETURNS TABLE
AS
RETURN 
SELECT DISTINCT p.Nome,p.Prezzo
FROM Pizza p 
WHERE p.Nome NOT IN (SELECT p.Nome
								FROM Pizza p 
								JOIN Composizione c ON p.CodPizza = c.CodPizza
								JOIN Ingrediente i ON c.CodIngrediente = i.CodIngrediente
								WHERE i.Nome = @NomeIngrediente)

SELECT * FROM ListinoPizzeSenzaIngrediente('Rucola')

--4)Calcolo numero pizze contenenti un ingrediente (parametri nome ingrediente)
CREATE FUNCTION NumeroPizzeContenentiIngrediente(@NomeIngrediente VARCHAR(20))
RETURNS INT
AS
BEGIN
DECLARE @NumeroPizze INT

SELECT @NumeroPizze = COUNT(*)
FROM Pizza p
JOIN Composizione c ON c.CodPizza = p.CodPizza
JOIN Ingrediente i ON c.CodIngrediente = i.CodIngrediente
WHERE i.Nome = @NomeIngrediente

RETURN @NumeroPizze
END

SELECT dbo.NumeroPizzeContenentiIngrediente('Pomodoro') AS [Numero pizze]

--5)Calcolo numero pizze che non contengono un ingrediente (parametri codiceingrediente)
CREATE FUNCTION NumeroPizzeNonContenentiIngrediente(@NomeIngrediente VARCHAR(20))
RETURNS INT
AS
BEGIN
DECLARE @NumeroPizze INT

SELECT @NumeroPizze = COUNT(*)
FROM Pizza p
WHERE p.Nome NOT IN (SELECT p.Nome
								FROM Pizza p 
								JOIN Composizione c ON p.CodPizza = c.CodPizza
								JOIN Ingrediente i ON c.CodIngrediente = i.CodIngrediente
								WHERE i.Nome = @NomeIngrediente)

RETURN @NumeroPizze
END

SELECT dbo.NumeroPizzeNonContenentiIngrediente('Rucola') AS [Numero pizze]

--6)Calcolo numero ingredienti contenuti in una pizza (parametri nome pizza)
CREATE FUNCTION NumeroIngredientiPizza(@NomePizza VARCHAR(20))
RETURNS INT
AS
BEGIN
DECLARE @NumeroIngredienti INT
SELECT @NumeroIngredienti = COUNT(*)
FROM Ingrediente i
WHERE i.CodIngrediente IN (SELECT c.CodIngrediente
						   FROM Composizione c
						   JOIN Pizza p ON p.CodPizza = c.CodPizza
						   WHERE p.Nome = @NomePizza)

RETURN @NumeroIngredienti
END

SELECT dbo.NumeroIngredientiPizza('Quattro Stagioni') AS [Numero ingredienti]
---VIEW---

--1.1)Realizzare una view che rappresenta il menù con tutte le pizze
CREATE VIEW Menù(Pizza,Prezzo,Ingrediente)
AS (
		SELECT p.Nome, p.Prezzo,i.Nome
		FROM Pizza p
		JOIN Composizione c ON p.CodPizza = c.CodPizza
		JOIN Ingrediente i ON c.CodIngrediente = i.CodIngrediente
    )

SELECT * FROM Menù


--1.2) VIEW più carina
CREATE VIEW MenùPerfecto(Pizza,Prezzo,Ingredienti)
AS (
		SELECT p.Nome, p.Prezzo
		FROM Pizza p
		JOIN Composizione c ON p.CodPizza = c.CodPizza
		JOIN Ingrediente i ON c.CodIngrediente = i.CodIngrediente
		GROUP BY p.Nome,i.Nome,p.Prezzo
		)----? LASCIATA A META'

---AGGIUNTA ORDINE---

--CREATE TABLE Ordine(
--IdOrdine INT IDENTITY(1,1),
--Totale DECIMAL(6,2) NOT NULL,
--CONSTRAINT Pk_Ordine PRIMARY KEY(IdOrdine)
--)


--CREATE TABLE PizzaOrdine(
--CodPizza VARCHAR(10),
--IdOrdine INT,
--Quantità INT NOT NULL,
--SubTotale DECIMAL(6,2) NOT NULL,
--CONSTRAINT Pk_PizzaOrdine PRIMARY KEY(CodPizza,IdOrdine),
--CONSTRAINT Fk_PizzaOrdineP FOREIGN KEY(CodPizza) REFERENCES Pizza(CodPizza),
--CONSTRAINT Fk_PizzaOrdineO FOREIGN KEY(IdOrdine) REFERENCES Ordine(IdOrdine)
--)

---PROCEDURE PER INSERIMENTO PIZZA ALL'ORDINE NUOVO---
CREATE PROCEDURE InserisciPizzaOrdineNuovo
@NomePizza VARCHAR(20),
@Quantità INT

AS
BEGIN
	BEGIN TRY
	DECLARE @CodPizza VARCHAR(10),@PrezzoPizza DECIMAL(6,2)
	SELECT @CodPizza = p.CodPizza, @PrezzoPizza = p.Prezzo
	FROM Pizza p
	WHERE p.Nome = @NomePizza


	INSERT INTO Ordine VALUES (@PrezzoPizza*@Quantità)

	DECLARE @IdOrdine INT
	SELECT @IdOrdine =MAX(o.IdOrdine)
	FROM Ordine o

	INSERT INTO PizzaOrdine VALUES (@CodPizza,@IdOrdine,@Quantità,@PrezzoPizza*@Quantità)
	END TRY

	BEGIN CATCH
	SELECT ERROR_MESSAGE(), ERROR_LINE()
	END CATCH
END

EXECUTE InserisciPizzaOrdineNuovo 'Carpediem',2

---PROCEDURE PER INSERIMENTO PIZZA ORDINE GIA' ESISTENTE---
CREATE PROCEDURE InserisciPizzaOrdineEsistente
@NomePizza VARCHAR(20),
@Quantità INT,
@IdOrdine INT

AS
BEGIN
	BEGIN TRY
	DECLARE @CodPizza VARCHAR(10),@PrezzoPizza DECIMAL(6,2)
	SELECT @CodPizza = p.CodPizza, @PrezzoPizza = p.Prezzo
	FROM Pizza p
	WHERE p.Nome = @NomePizza

	


	DECLARE @Totale DECIMAL(6,2)
	SELECT @Totale = pz.SubTotale
	FROM PizzaOrdine pz
	WHERE pz.IdOrdine = @IdOrdine

	INSERT INTO PizzaOrdine VALUES (@CodPizza,@IdOrdine,@Quantità,(@Totale+(@PrezzoPizza*@Quantità)))

	UPDATE Ordine SET Totale += (@PrezzoPizza*@Quantità) WHERE IdOrdine = @IdOrdine

	END TRY

	BEGIN CATCH
	SELECT ERROR_MESSAGE(), ERROR_LINE()
	END CATCH
END

EXECUTE InserisciPizzaOrdineEsistente 'Margherita',1,1

---FUNZIONE CHE MI TORNA IL TOTALE DELL'ORDINE => SCONTRINO---
CREATE FUNCTION Scontrino(@IdOrdine INT)
RETURNS DECIMAL(6,2)

AS
BEGIN
	DECLARE @Totale DECIMAL(6,2)
	SELECT @Totale = o.Totale
	FROM Ordine o
	WHERE o.IdOrdine = @IdOrdine

	RETURN @Totale
END

SELECT dbo.Scontrino(1) AS [Totale da pagare]