-- Bloco inicial: Criação da tabela LIVROS
CREATE TABLE LIVROS (
    id_livro INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER
);

-- Inserindo valores fora de ordem (conforme exercício 6)
INSERT INTO LIVROS (autor, titulo, ano_publicacao) 
VALUES ('Graciliano Ramos', 'São Bernardo', 1934);

-- Comando para exibir a tabela completa depois de inserir os dados
SELECT * FROM LIVROS;
