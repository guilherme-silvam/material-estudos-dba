                -- Sumario

-- Data Definition Language é uma sublinguagem do SQL 
-- CREATE = CRIAR/DEFINIR
-- ALTER = ALTERAR 
-- DROP = REMOVER
-- TRUNCATE = REMOVER "DEIXANDO A ESTRUTURA DA TABELA"
-- RENAME = RENOMEAR
-- COMMENT = COMENTAR
                                                        
---------------------------CREATE-------------------------------

-- CRIAR BANCO DE DADOS:
CREATE DATABASE meu_banco_de_dados;

-- CRIAR TABELA:
-- EXPLICAÇÃO SOBRE RESTRIÇÕES NA TABELA
CREATE TABLE pessoas
(
    id INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único
    nome VARCHAR(100) NOT NULL,        -- Nome obrigatório
    idade INT CHECK (idade >= 0),      -- Idade não pode ser negativa
    cidade VARCHAR(100)                -- Cidade opcional
);


-- CRIAR ÍNDICE:
CREATE INDEX idx_nome ON pessoas (nome);

-- CRIAR VISÃO:
CREATE VIEW visita_pessoas AS
SELECT nome, cidade
FROM pessoas;

----------------------------ALTER------------------------------------

-- ADICIONAR COLUNA
ALTER TABLE pessoas ADD email VARCHAR(100);

-- REMOVER COLUNA
ALTER TABLE pessoas DROP COLUMN idade;

-- MODIFICAR COLUNA
ALTER TABLE pessoas MODIFY COLUMN nome VARCHAR(150);

-- RENOMEAR COLUNA
ALTER TABLE pessoas CHANGE COLUMN nome nome_completo VARCHAR(100);

-- ADICIONAR ÍNDICE
ALTER TABLE pessoas ADD INDEX idx_email (email);

----------------------------DROP----------------------------------------

-- REMOVER BANCO DE DADOS
DROP DATABASE meu_banco_de_dados;

-- REMOVER TABELA:
DROP TABLE pessoas;

-- REMOVER ÍNDICE
DROP INDEX idx_name ON pessoas;

-- REMOVER VISÃO:
DROP VIEW visita_pessoas;

------------------------------TRUNCATE------------------------------------
TRUNCATE TABLE pessoas;

------------------------------RENAME--------------------------------------
RENAME TABLE pessoas TO clientes;

------------------------------COMMENT--------------------------------------

-- ADICIONAR COMENTARIO A TABELA
ALTER TABLE pessoas COMMENT = 'Tabela exemplo';

-- ADICIONAR COMENTARIO A COLUNA
ALTER TABLE pessoas MODIFY nome VARCHAR(100) COMMENT 'COLUNA EXEMPLO';
