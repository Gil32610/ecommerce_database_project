CREATE DATABASE ecommerce_project;

USE ecommerce_project;

-- Usuaŕios
CREATE USER 'administrador'@'localhost' IDENTIFIED BY '@Baiacu123';
CREATE USER 'gerente'@'localhost' IDENTIFIED BY '@Baiacu123';
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY '@Baiacu123';

-- Permissions
GRANT ALL PRIVILEGES ON *.* TO 'administrador'@'localhost' WITH GRANT OPTION;
GRANT SELECT, DELETE, UPDATE ON ecommerce_project.* TO 'gerente'@'localhost';
GRANT INSERT, SELECT ON ecommerce_project.* TO 'funcionario'@'localhost';
FLUSH PRIVILEGES;

--

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

CREATE TABLE IF NOT EXISTS venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATE NOT NULL,
    id_vendedor INT,
    id_cliente INT,
    id_produto INT NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

INSERT INTO funcionario (nome_funcionario, idade_funcionario, sexo_funcionario, cargo_funcionario, salario_funcionario, data_nasc_funcionario) VALUES 
('Carolina Lacerda', 22, 'f', 'vendedor', 3200.5, '2001-07-21'),
('Lucas Álvares', 18, 'm', 'vendedor', 2300.8, '2006-08-02'),
('Adriana Mattos', 35, 'f', 'gerente', 5300.75, '1989-03-26'),
('Matheus Jorge', 22, 'm', 'vendedor', 3150.5, '2001-09-02'),
('Jaqueline Borba', 32, 'f', 'CEO', 5500.25, '1992-02-15');


INSERT INTO produto (nome_produto, quantidade_produto, descricao_produto, valor_produto) VALUES
('Laptop', 35, 'Alta performance', 520.75),
('Monitor', 43, 'Alta resolução', 980.40),
('Teclado', 25, 'Design ergonômico', 75.20),
('Mouse', 60, 'Compacto e leve', 45.10),
('Headset', 15, 'Alta performance', 120.99),
('Impressora', 18, 'Multifuncional', 220.30),
('Scanner', 12, 'Alta resolução', 185.40),
('Webcam', 33, 'Alta definição', 65.90),
('Microfone', 27, 'Alta sensibilidade', 50.75),
('Notebook', 40, 'Portátil e eficiente', 899.99),
('Tablet', 22, 'Tela sensível ao toque', 350.00),
('Placa de Vídeo', 30, 'Alto desempenho', 250.49),
('Processador', 20, 'Rápido e eficiente', 300.00),
('Memória RAM', 45, 'Grande capacidade', 100.25),
('Fonte de Alimentação', 37, 'Alta eficiência', 75.99),
('Gabinete', 50, 'Espaçoso e durável', 55.75),
('HD Externo', 28, 'Grande capacidade', 80.45),
('SSD', 32, 'Alta velocidade', 150.99),
('Placa-Mãe', 25, 'Compatível e eficiente', 220.50),
('Cooler', 60, 'Silencioso e eficiente', 35.75);

INSERT INTO cliente (id_cliente, nome_cliente, sexo_cliente, idade_cliente, data_nasc_cliente) VALUES
(1, 'Ana Almeida', 'f', 28, '1995-04-15'),
(2, 'Bruno Barros', 'm', 35, '1988-05-22'),
(3, 'Carlos Cardoso', 'm', 42, '1981-03-12'),
(4, 'Daniela Duarte', 'f', 25, '1998-07-18'),
(5, 'Eduardo Esteves', 'm', 30, '1993-09-25'),
(6, 'Fernanda Ferreira', 'f', 37, '1986-11-30'),
(7, 'Gabriel Gomes', 'm', 33, '1990-01-10'),
(8, 'Helena Henrique', 'f', 29, '1994-06-05'),
(9, 'Igor Iglesias', 'm', 31, '1992-08-20'),
(10, 'Juliana Jardim', 'f', 27, '1996-02-17'),
(11, 'Carlos Barros', 'm', 23, '2001-04-22'),
(12, 'Igor Cardoso', 'f', 42, '1982-03-14'),
(13, 'Carlos Iglesias', 'm', 64, '1960-02-09'),
(14, 'Carlos Gomes', 'f', 30, '1994-02-08'),
(15, 'Bruno Gomes', 'm', 71, '1952-08-10'),
(16, 'Gabriel Ferreira', 'm', 38, '1985-11-05'),
(17, 'Juliana Jardim', 'f', 24, '2000-05-03'),
(18, 'Fernanda Esteves', 'f', 49, '1974-09-09'),
(19, 'Igor Henrique', 'm', 52, '1971-07-26'),
(20, 'Helena Gomes', 'f', 19, '2004-08-07'),
(21, 'Carlos Jardim', 'm', 33, '1990-06-28'),
(22, 'Helena Almeida', 'f', 35, '1989-02-16'),
(23, 'Bruno Henrique', 'm', 22, '2002-02-20'),
(24, 'Igor Almeida', 'm', 39, '1985-03-16'),
(25, 'Helena Esteves', 'f', 42, '1981-10-11'),
(26, 'Eduardo Almeida', 'm', 45, '1978-03-30'),
(27, 'Gabriel Duarte', 'm', 34, '1989-11-18'),
(28, 'Ana Ferreira', 'f', 41, '1982-06-23'),
(29, 'Bruno Henrique', 'm', 31, '1993-07-15'),
(30, 'Carlos Jardim', 'm', 28, '1995-08-27'),
(31, 'Daniela Esteves', 'f', 47, '1976-09-12'),
(32, 'Eduardo Ferreira', 'm', 29, '1994-11-06'),
(33, 'Fernanda Duarte', 'f', 52, '1971-04-25'),
(34, 'Gabriel Henrique', 'm', 38, '1986-08-09'),
(35, 'Helena Cardoso', 'f', 27, '1997-03-16'),
(36, 'Igor Almeida', 'm', 43, '1981-10-05'),
(37, 'Juliana Cardoso', 'f', 26, '1998-01-08'),
(38, 'Ana Jardim', 'f', 24, '2000-07-02'),
(39, 'Bruno Esteves', 'm', 34, '1989-04-18'),
(40, 'Carlos Duarte', 'm', 48, '1975-12-21'),
(41, 'Daniela Ferreira', 'f', 25, '1999-05-13'),
(42, 'Eduardo Gomes', 'm', 33, '1990-09-30'),
(43, 'Fernanda Almeida', 'f', 35, '1988-12-17'),
(44, 'Gabriel Esteves', 'm', 30, '1993-06-27'),
(45, 'Helena Ferreira', 'f', 22, '2001-03-25'),
(46, 'Igor Cardoso', 'm', 31, '1992-08-19'),
(47, 'Juliana Henrique', 'f', 29, '1994-01-13'),
(48, 'Ana Almeida', 'f', 37, '1986-04-05'),
(49, 'Bruno Barros', 'm', 43, '1981-11-26'),
(50, 'Carlos Cardoso', 'm', 38, '1986-12-30'),
(51, 'Daniela Duarte', 'f', 29, '1994-05-07'),
(52, 'Eduardo Esteves', 'm', 29, '1994-08-13'),
(53, 'Fernanda Ferreira', 'f', 31, '1993-02-21'),
(54, 'Gabriel Gomes', 'm', 32, '1991-04-11'),
(55, 'Helena Henrique', 'f', 27, '1997-01-09'),
(56, 'Igor Iglesias', 'm', 29, '1995-11-20'),
(57, 'Juliana Jardim', 'f', 28, '1996-03-14'),
(58, 'Carlos Barros', 'm', 22, '2001-04-10'),
(59, 'Igor Cardoso', 'm', 40, '1983-03-20'),
(60, 'Carlos Iglesias', 'm', 60, '1963-02-15'),
(61, 'Carlos Gomes', 'm', 29, '1994-02-10'),
(62, 'Bruno Gomes', 'm', 70, '1954-08-15'),
(63, 'Gabriel Ferreira', 'm', 39, '1984-11-05'),
(64, 'Juliana Jardim', 'f', 24, '2000-05-07'),
(65, 'Fernanda Esteves', 'f', 50, '1973-09-14'),
(66, 'Igor Henrique', 'm', 53, '1971-07-22'),
(67, 'Helena Gomes', 'f', 20, '2004-08-12'),
(68, 'Carlos Jardim', 'm', 33, '1990-06-10'),
(69, 'Helena Almeida', 'f', 34, '1989-02-15'),
(70, 'Bruno Henrique', 'm', 23, '2002-02-11'),
(71, 'Igor Almeida', 'm', 40, '1984-03-11'),
(72, 'Helena Esteves', 'f', 42, '1981-10-07'),
(73, 'Eduardo Almeida', 'm', 46, '1978-03-23'),
(74, 'Gabriel Duarte', 'm', 34, '1989-11-20'),
(75, 'Ana Ferreira', 'f', 41, '1982-06-24'),
(76, 'Bruno Henrique', 'm', 32, '1993-07-16'),
(77, 'Carlos Jardim', 'm', 28, '1995-08-23'),
(78, 'Daniela Esteves', 'f', 46, '1976-09-18'),
(79, 'Eduardo Ferreira', 'm', 29, '1994-11-14'),
(80, 'Fernanda Duarte', 'f', 52, '1971-04-23'),
(81, 'Gabriel Henrique', 'm', 38, '1986-08-06'),
(82, 'Helena Cardoso', 'f', 27, '1997-03-11'),
(83, 'Igor Almeida', 'm', 43, '1981-10-11'),
(84, 'Juliana Cardoso', 'f', 26, '1998-01-13'),
(85, 'Ana Jardim', 'f', 24, '2000-07-07'),
(86, 'Bruno Esteves', 'm', 34, '1989-04-10'),
(87, 'Carlos Duarte', 'm', 48, '1975-12-13'),
(88, 'Daniela Ferreira', 'f', 25, '1999-05-19'),
(89, 'Eduardo Gomes', 'm', 33, '1990-09-13'),
(90, 'Fernanda Almeida', 'f', 35, '1988-12-11'),
(91, 'Gabriel Esteves', 'm', 30, '1993-06-22'),
(92, 'Helena Ferreira', 'f', 22, '2001-03-19'),
(93, 'Igor Cardoso', 'm', 31, '1992-08-13'),
(94, 'Juliana Henrique', 'f', 29, '1994-01-14'),
(95, 'Ana Almeida', 'f', 37, '1986-04-08'),
(96, 'Bruno Barros', 'm', 43, '1981-11-20'),
(97, 'Carlos Cardoso', 'm', 38, '1986-12-30'),
(98, 'Daniela Duarte', 'f', 29, '1994-05-07'),
(99, 'Eduardo Esteves', 'm', 29, '1994-08-13'),
(100, 'Fernanda Ferreira', 'f', 31, '1993-02-21');

INSERT INTO cliente_especial (id_cliente_especial, nome_cliente_especial, sexo_cliente_especial, idade_cliente_especial, id_cliente, cashback_cliente_especial)
VALUES
    (1, 'Fernanda Esteves', 'f', 50, 65, 10.2),
    (2, 'Helena Gomes', 'f', 49, 18, 102.3),
    (3, 'Helena Henrique', 'f', 42, 19, 40),
    (4, 'Helena Esteves', 'f', 42, 25, 35),
    (5, 'Ana Almeida', 'f', 37, 1, 1042.3),
    (6, 'Fernanda Ferreira', 'f', 37, 6, 90),
    (7, 'Fernanda Almeida', 'f', 35, 43, 13),
    (8, 'Helena Almeida', 'f', 35, 22, 18),
    (9, 'Fernanda Duarte', 'f', 52, 33, 14),
    (10, 'Juliana Henrique', 'f', 50, 47, 36),
    (11, 'Ana Ferreira', 'f', 41, 28, 89),
    (12, 'Ana Almeida', 'f', 37, 48, 12),
    (13, 'Daniela Esteves', 'f', 46, 31, 5),
    (14, 'Fernanda Almeida', 'f', 35, 90, 9),
    (15, 'Helena Ferreira', 'f', 45, 45, 11),
    (16, 'Ana Almeida', 'f', 37, 95, 4),
    (17, 'Ana Almeida', 'f', 37, 8, 2.3);


