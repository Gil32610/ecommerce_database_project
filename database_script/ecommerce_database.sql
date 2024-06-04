CREATE DATABASE ecommerce_project;

USE ecommerce_project;


-- tabelas
CREATE TABLE IF NOT EXISTS cliente(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR(50) NOT NULL,
sexo_cliente CHAR(1) NOT NULL check(sexo_cliente='m' OR sexo_cliente='f' OR sexo_cliente='o') ,
idade_cliente tinyint NOT NULL,
data_nasc_cliente DATE NOT NULL);

CREATE TABLE IF NOT EXISTS cliente_especial(
id_cliente_especial INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente_especial VARCHAR(50) NOT NULL,
sexo_cliente_especial CHAR(1) NOT NULL check(sexo_cliente_especial='m' OR sexo_cliente_especial='f' OR sexo_cliente_especial='o') ,
idade_cliente_especial tinyint NOT NULL,
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
cashback_cliente_especial DECIMAL(10,2));

CREATE TABLE IF NOT EXISTS funcionario(
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(50) NOT NULL,
idade_funcionario TINYINT NOT NULL,
sexo_funcionario CHAR(1) NOT NULL check(sexo_funcionario ='m' OR sexo_funcionario ='f' OR sexo_funcionario ='o') ,
cargo_funcionario VARCHAR(15) CHECK(cargo_funcionario='gerente' OR cargo_funcionario ='vendedor' OR cargo_funcionario = 'CEO'),
salario_funcionario DECIMAL(10,2),
data_nasc_funcionario DATE NOT NULL);

CREATE TABLE IF NOT EXISTS produto(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(25) NOT NULL,
quantidade_produto INT,
descricao_produto VARCHAR(100),
valor_produto DECIMAL(10,2));

CREATE TABLE IF NOT EXISTS venda(
id_venda INT AUTO_INCREMENT PRIMARY KEY,
data_venda DATE NOT NULL,
id_vendedor INT,
FOREIGN KEY (id_vendedor) REFERENCES funcionario(id_funcionario),
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
id_produto INT NOT NULL,
FOREIGN KEY (id_produto) REFERENCES Produto(id_produto));



-- usuários

CREATE USER 'funcionário'@'localhost' IDENTIFIED BY '0417';


INSERT INTO funcionario (nome_funcionario, idade_funcionario, sexo_funcionario, cargo_funcionario, salario_funcionario, data_nasc_funcionario)VALUES
('Gabriel Constantino', 28, 'm', 'vendedor', 3000.0, '1996-05-30'),
('Carolina Lacerda', 22, 'f', 'vendedor', 3200.5, '2001-07-21'),
('Lucas Álvares', 18, 'm', 'vendedor', 2300.8, '2006-08-2'),
('Adriana Mattos', 35, 'f', 'gerente', 5300.75, '1989-03-26'),
('Matheus Jorge', 22, 'm', 'vendedor', 3150.5, '2001-09-2'),
('Jaqueline Borba', 32, 'f', 'gerente', 5500.25, '1992-02-15');

SELECT * FROM funcionario;

CALL reajuste_salarial(20.0, 'vendedor'); 




