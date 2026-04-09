-- Inserir dados na tabela Clientes
INSERT INTO Clientes (ID, nomeCliente, emailCliente) exercicos 6
VALUES
(1, 'Gabriel Souza', 'gabriel.souza@email.com'),
(2, 'Maria Oliveira', 'maria.oliveira@email.com'),
(3, 'João Pereira', 'joao.pereira@email.com');

-- Inserir dados na tabela Compras
INSERT INTO Compras (CompraID, ClienteID, NomeLivro)
VALUES
(101, 1, 'Dom Casmurro'),
(102, 1, 'O Senhor dos Anéis'),
(103, 2, 'A Culpa é das Estrelas'),
(104, 3, '1984'),
(105, 3, 'O Pequeno Príncipe');
