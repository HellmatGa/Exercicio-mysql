-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
CREATE DATABASE db_generationrh;

-- Comenado para USAR banco de dados
USE db_generationrh;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
-- criando a tabela com seus requisitos
CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
email VARCHAR(255),
salario DECIMAL (10,2),
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 5 dados (registros).
-- Registrando colaboradores
INSERT INTO tb_colaboradores (nome, cargo, email, salario) 
VALUES ("Hellmat", "Gerente", "...", 50000.00),
("Eliana", "Professor", "...", 20000.00),
("Carol", "Assistente de RH", "...", 30000.00),
("Luana", "Gestora RH", "...", 40000.00),
("Nathalia", "Diretora", "...", 60000.00);

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
-- selecionando calaboradores com salário maio que 2.000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000
-- exibindo salario de colaboradores menor que 2.000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
-- Atualizando/alterando registro da tabela
UPDATE tb_colaboradores SET salario = 1500.00 WHERE id = 3;
