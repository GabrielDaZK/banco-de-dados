-- 1. Criação do Banco de Dados
CREATE DATABASE sistema_blog;
USE sistema_blog;

-- 2. Criação da Tabela de Usuários
CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    biografia TEXT,
    data_registro DATE
);

-- 3. Criação da Tabela de Postagens (com chave estrangeira)
CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    conteudo TEXT,
    autor_id INT,
    data_publicacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);

-- 4. Inserindo dados de teste
INSERT INTO autores (nome, biografia, data_registro) 
VALUES ('Ana Silva', 'Escritora e entusiasta de tecnologia.', '2024-01-15');

INSERT INTO posts (titulo, conteudo, autor_id) 
VALUES ('Aprendendo MySQL', 'O MySQL é um dos bancos de dados mais usados no mundo...', 1);

-- 5. Consulta que junta as duas tabelas (INNER JOIN)
-- Isso mostra o título do post junto com o nome de quem escreveu
SELECT 
    posts.titulo, 
    posts.conteudo, 
    autores.nome AS autor
FROM posts
INNER JOIN autores ON posts.autor_id = autores.id;
