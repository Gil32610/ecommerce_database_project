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
('Carolina Lacerda', 22, 'f', 'vendedor', 3200.5, '2001-07-21'),
('Lucas Álvares', 18, 'm', 'vendedor', 2300.8, '2006-08-2'),
('Adriana Mattos', 35, 'f', 'gerente', 5300.75, '1989-03-26'),
('Matheus Jorge', 22, 'm', 'vendedor', 3150.5, '2001-09-2'),
('Jaqueline Borba', 32, 'f', 'CEO', 5500.25, '1992-02-15');

INSERT INTO cliente(nome_cliente, sexo_cliente,idade_cliente, data_nasc_cliente) VALUES
("Rodrigo Manzella", 'm', 21, "2003-03-11"),
("Alice Johnson", 'f', 30, "1993-05-15"),
("Benjamin Smith", 'm', 45, "1978-09-22"),
("Charlotte Brown", 'f', 27, "1996-01-03"),
("Daniel Davis", 'm', 35, "1989-12-10"),
("Ella Martinez", 'f', 40, "1984-07-28"),
("Frank Wilson", 'm', 50, "1973-02-17"),
("Grace Garcia", 'f', 22, "2002-11-05"),
("Henry Anderson", 'm', 28, "1995-06-18"),
("Isabella Thomas", 'f', 33, "1991-04-24"),
("Jack Jackson", 'm', 38, "1986-03-19"),
("Karen White", 'f', 26, "1998-12-29"),
("Leo Harris", 'm', 32, "1991-11-15"),
("Mia Clark", 'f', 29, "1994-05-07"),
("Nathan Lewis", 'm', 36, "1988-09-13"),
("Olivia Lee", 'f', 23, "2001-08-09"),
("Paul Walker", 'm', 48, "1975-01-27"),
("Quinn Hall", 'f', 37, "1986-04-14"),
("Ryan Young", 'm', 31, "1992-12-03"),
("Sophia King", 'f', 25, "1999-03-21"),
("Thomas Wright", 'm', 39, "1984-02-08"),
("Uma Scott", 'f', 24, "2000-06-26"),
("Victor Adams", 'm', 34, "1989-08-30"),
("Wendy Baker", 'f', 28, "1996-11-11"),
("Xander Gonzalez", 'm', 33, "1990-05-05"),
("Yara Nelson", 'f', 41, "1982-09-01"),
("Zachary Carter", 'm', 27, "1996-10-20"),
("Amber Roberts", 'f', 32, "1992-04-17"),
("Brandon Evans", 'm', 44, "1979-07-23"),
("Claire Mitchell", 'f', 30, "1993-01-10"),
("David Perez", 'm', 26, "1998-03-08"),
("Eva Turner", 'f', 35, "1989-11-12"),
("George Phillips", 'm', 49, "1974-06-19"),
("Hannah Parker", 'f', 22, "2002-07-06"),
("Ivan Campbell", 'm', 28, "1995-08-25"),
("Julia Edwards", 'f', 37, "1987-10-02"),
("Kevin Collins", 'm', 40, "1983-02-14"),
("Luna Stewart", 'f', 24, "1999-09-30"),
("Michael Sanchez", 'm', 30, "1994-03-23"),
("Nina Morris", 'f', 26, "1998-12-05"),
("Oscar Rogers", 'm', 33, "1990-10-18"),
("Piper Reed", 'f', 28, "1996-02-21"),
("Quincy Cook", 'm', 39, "1985-05-11"),
("Rachel Morgan", 'f', 34, "1990-11-27"),
("Samuel Bell", 'm', 38, "1986-09-14"),
("Tara Murphy", 'f', 25, "1999-06-03"),
("Ulysses Bailey", 'm', 43, "1980-12-19"),
("Violet Rivera", 'f', 29, "1995-01-22"),
("William Cooper", 'm', 31, "1992-04-09"),
("Xenia Ward", 'f', 27, "1996-03-30"),
("Yusuf Peterson", 'm', 35, "1988-07-25"),
("Zoe Gray", 'f', 24, "2000-05-12"),
("Aaron James", 'm', 28, "1996-10-08"),
("Bella Richardson", 'f', 33, "1991-09-05"),
("Caleb Russell", 'm', 29, "1994-02-17"),
("Diana Foster", 'f', 36, "1987-01-26"),
("Ethan Howard", 'm', 32, "1991-06-15"),
("Fiona Ward", 'f', 34, "1989-11-10"),
("Gabriel Cox", 'm', 40, "1984-08-03"),
("Hazel Diaz", 'f', 25, "1999-12-07"),
("Isaac Richardson", 'm', 37, "1986-04-25"),
("Jasmine Bennett", 'f', 27, "1996-02-13"),
("Kyle Simmons", 'm', 31, "1992-08-29"),
("Lily Bryant", 'f', 23, "2001-11-02"),
("Mason Fisher", 'm', 29, "1994-07-04"),
("Nora Griffin", 'f', 26, "1998-05-18"),
("Owen Hughes", 'm', 34, "1989-03-12"),
("Penelope Ramirez", 'f', 30, "1993-09-21"),
("Quinn Wood", 'm', 38, "1986-10-30"),
("Riley Perry", 'f', 28, "1996-12-15"),
("Sebastian Bell", 'm', 27, "1996-01-19"),
("Taylor Sanders", 'f', 25, "1998-03-29"),
("Umar Stewart", 'm', 39, "1985-07-16"),
("Vanessa Bailey", 'f', 32, "1991-06-22"),
("Wyatt Cook", 'm', 30, "1994-02-25"),
("Ximena Collins", 'f', 31, "1993-05-11"),
("Yusuf Peterson", 'm', 35, "1988-07-25"),
("Zoe Gray", 'f', 24, "2000-05-12"),
("Asher James", 'm', 28, "1996-10-08"),
("Brooke Richardson", 'f', 33, "1991-09-05"),
("Chase Russell", 'm', 29, "1994-02-17"),
("Daisy Foster", 'f', 36, "1987-01-26"),
("Elijah Howard", 'm', 32, "1991-06-15"),
("Faith Ward", 'f', 34, "1989-11-10"),
("Gavin Cox", 'm', 40, "1984-08-03"),
("Harper Diaz", 'f', 25, "1999-12-07"),
("Ian Richardson", 'm', 37, "1986-04-25"),
("Jade Bennett", 'f', 27, "1996-02-13"),
("Kai Simmons", 'm', 31, "1992-08-29"),
("Leah Bryant", 'f', 23, "2001-11-02"),
("Miles Fisher", 'm', 29, "1994-07-04"),
("Nina Griffin", 'f', 26, "1998-05-18"),
("Owen Hughes", 'm', 34, "1989-03-12"),
("Piper Ramirez", 'f', 30, "1993-09-21"),
("Quinn Wood", 'm', 38, "1986-10-30"),
("Riley Perry", 'f', 28, "1996-12-15"),
("Sebastian Bell", 'm', 27, "1996-01-19"),
("Taylor Sanders", 'f', 25, "1998-03-29"),
("Trey Parker", 'm',54 , "1969-10-19"),
("Matt Stone", 'm',53 , "1971-05-26");

INSERT INTO produto (nome_produto, quantidade_produto, descricao_produto, valor_produto) VALUES
('Notebook', 10, 'Tela de 15 polegadas, 8GB RAM, 256GB SSD', 2999.99),
('Smartphone', 25, 'Tela de 5.5 polegadas, 4GB RAM, 64GB armazenamento', 1299.99),
('Fones de Ouvido', 50, 'Sem fio, com cancelamento de ruído', 899.99),
('Video-game', 15, 'Resolução 4K, 1TB armazenamento', 4399.99),
('Smartwatch', 30, 'Rastreamento fitness, monitor de batimentos cardíacos', 2149.99),
('Liquidificador', 20, '700W, jarra de vidro de 1.5L', 49.99),
('Bule Elétrica', 35, 'Capacidade de 1.7L, aço inoxidável', 29.99),
('Micro-ondas', 10, '900W, capacidade de 25L', 99.99),
('Aspirador de Pó', 12, 'Sem fio, autonomia de 60 minutos', 649.99),
('Geladeira Duas Portas', 5, 'Capacidade de 300L, eficiente em energia', 2499.99),
('Cadeira de Escritório', 40, 'Ergonômica, altura ajustável', 89.99),
('Mesa de Jantar', 7, 'Para 6 pessoas, acabamento em madeira', 299.99),
('Sofá', 8, 'Para 3 pessoas, estofado em tecido', 1499.99),
('Estante de Livros', 20, '5 prateleiras, de madeira', 349.99),
('Camisa', 100, '100% algodão, cores variadas', 79.99),
('Calça Jeans', 50, 'Corte slim, jeans azul', 339.99),
('Tênis', 30, 'Confortável, unissex', 459.99),
('Mochila', 25, 'Resistente à água, capacidade de 20L', 334.99),
('Relógio Rolex', 20, 'Analógico, aço inoxidável', 5329.99),
('Óculos de Sol', 40, 'Proteção UV, polarizado', 49.99);

INSERT INTO venda (data_venda, id_vendedor, id_cliente, id_produto) VALUES
('2023-03-12', 1, 1, 1),
('2023-03-12', 1, 1, 9),
('2023-03-13', 4, 1, 13),
('2023-03-15', 2, 1, 4),
('2023-03-15', 2, 1, 5),
('2023-03-16', 4, 1, 6),
('2023-03-16', 1, 1, 7),
('2023-03-16', 2, 1, 8),
('2023-03-18', 4, 1, 9),
('2023-03-18', 1, 1, 10);

INSERT INTO venda (data_venda, id_vendedor, id_cliente, id_produto) VALUES
('2023-04-10', 1, 1, 1),
('2023-04-10', 1, 1, 1),
('2023-04-10', 4, 1, 1),
('2023-04-15', 2, 1, 8),
('2023-04-15', 2, 1, 8),
('2023-04-15', 4, 1, 3),
('2023-04-16', 1, 1, 3),
('2023-04-16', 2, 1, 8),
('2023-04-25', 4, 1, 10),
('2023-04-25', 1, 1, 10);

SELECT * FROM FUNCIONARIO;

call month_max_sales_less_sold_product;

call reajuste_salarial(10.0, 'CEO');

INSERT INTO cliente_especial (nome_cliente_especial, sexo_cliente_especial, idade_cliente_especial, id_cliente, cashback_cliente_especial) VALUES
    ('João Silva', 'm', 30, 1, 50.00),
    ('Maria Oliveira', 'f', 25, 2, 45.00),
    ('Pedro Almeida', 'o', 40, 3, 55.00),
    ('Ana Santos', 'm', 35, 4, 60.00),
    ('Fernanda Costa', 'f', 28, 5, 40.00),
    ('Rafael Pereira', 'o', 45, 6, 70.00),
    ('Mariana Ferreira', 'm', 32, 7, 48.00),
    ('Carlos Lima', 'f', 27, 8, 42.00),
    ('Aline Souza', 'o', 38, 9, 58.00),
    ('Luiz Rodrigues', 'm', 33, 10, 52.00),
    ('Patrícia Gonçalves', 'f', 26, 11, 44.00),
    ('André Martins', 'o', 42, 12, 63.00),
    ('Vanessa Pereira', 'm', 31, 13, 47.00),
    ('Ricardo Alves', 'f', 29, 14, 38.00),
    ('Carolina Silva', 'o', 36, 15, 67.00),
    ('Daniel Santos', 'm', 34, 16, 55.00),
    ('Camila Oliveira', 'f', 31, 17, 42.00),
    ('Gabriel Costa', 'o', 39, 18, 60.00),
    ('Isabela Lima', 'm', 32, 19, 49.00),
    ('Juliana Rodrigues', 'f', 30, 20, 45.00);
    
    



