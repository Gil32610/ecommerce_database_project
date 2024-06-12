-- Users
CREATE USER 'administrador'@'localhost' IDENTIFIED BY '123';
CREATE USER 'gerente'@'localhost' IDENTIFIED BY '123';
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY '123';

-- Permissions
GRANT ALL PRIVILEGES ON *.* TO 'administrador'@'localhost' WITH GRANT OPTION;
GRANT SELECT, DELETE, UPDATE ON your_database.* TO 'gerente'@'localhost';
GRANT INSERT, SELECT ON your_database.* TO 'funcionario'@'localhost';
FLUSH PRIVILEGES;
