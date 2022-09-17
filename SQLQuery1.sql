CREATE DATABASE TesteSegBT6FT3
GO
USE TesteSegBT6FT3
GO

CREATE TABLE Usuarios
(
	UsuarioId INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
)
GO

INSERT INTO Usuarios VALUES ('email@email.com', 123456)
INSERT INTO Usuarios VALUES('email1@email.com', 123456)
GO

SELECT * FROM Usuarios

SELECT Email, Senha, HASHBYTES ('MD2', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES ('MD4', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES ('MD5', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES ('SHA', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES ('SHA1', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES ('SHA2_256', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES ('SHA2_512', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1