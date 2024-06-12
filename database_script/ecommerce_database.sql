CREATE DATABASE IF NOT EXISTS ecommerce_project;

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

CREATE TABLE IF NOT EXISTS funcionario_especial(
	id_funcionario_especial INT PRIMARY KEY,
    aumento DECIMAL(10,2),
    FOREIGN KEY (id_funcionario_especial) REFERENCES funcionario(id_funcionario));
    
CREATE TABLE IF NOT EXISTS LogMensagens (
    mensagem TEXT NOT NULL
);

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

-- CREATE USER 'funcionário'@'localhost' IDENTIFIED BY '0417';


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

SELECT * FROM FUNCIONARIO;

SELECT * FROM CLIENTE;

SELECT * FROM LogMensagens;

-- CALL reajuste_salarial(20.0, 'vendedor'); 

USE ecommerce_project;
CALL SorteioCliente();
CALL EstatisticasVendas();
call month_max_sales_less_sold_product;



