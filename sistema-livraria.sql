-- Criação da tabela Clientes
-- Criar tabela Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) UNIQUE NOT NULL
);

-- Criar tabela Compras
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(200) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);
