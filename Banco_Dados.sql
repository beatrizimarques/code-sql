CREATE Database Consultorio; /*criando banco de dados*/
USE Consultorio; /*acessando o banco de dados*/

DROP DATABASE Consultorio; /*deletar o banco de dados*/

CREATE TABLE Paciente(
	pk_id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome_paciente VARCHAR(100),
    data_nasc_paciente DATE,
    cpf_paciente CHAR(11), 
    genero_paciente ENUM('f', 'm', 'o'),
    endereco_paciente VARCHAR(100),
    email_paciente VARCHAR(50),
    telefone_paciente CHAR(13)
);

INSERT INTO Paciente(nome_paciente,data_nasc_paciente,cpf_paciente,genero_paciente,endereco_paciente,email_paciente,telefone_paciente) values
('João da Silva', '1987-10-29', '12345678912', 'm', 'Rua nove, 10', 'joao@joao.com', '5511945823516'),
('Beatriz Marques', '1995-10-02', '52846982112', 'f', 'Rua cinco, 10', 'bea@bea.com', '5511941658794'),
('Marcos Vinicius', '1980-08-02', '52498741657', 'm', 'Rua dez, 10', 'marcos@marcos.com', '5511985216947'),
('Iarley Souza', '1930-08-02', '89413201472', 'm', 'Rua quinze, 10', 'leley@leley.com', '5511998745632'),
('Raphael Pereira', '1912-12-03', '78952013654', 'm', 'Rua onze, 10', 'rapha@rapha.com', '5511998745632'),
('Weslley Aparecida', '2004-02-04', '96321458796', 'm', 'Rua tres, 10', 'weslley@weslley.com', '5511998547136'),
('Hillary Santos', '2002-12-08', '78952013654', 'f', 'Rua dois, 10', 'hillary@hillary.com', '5511998741325'),
('Joana Marques', '1980-02-03', '98521463657', 'f', 'Rua dezoito, 10', 'joana@joana.com', '5511998745632'),
('Debora Paixao', '2005-11-12', '98521463658', 'f', 'Rua oito, 10', 'debora@debora.com', '5511965216547'),
('Gabrielle Ribeiro', '1986-03-11', '69871325972', 'f', 'Rua dois, 10', 'gabrielle@gabrielle.com', '5511998741325');

DESCRIBE Paciente;
SELECT*FROM Paciente;

CREATE TABLE Dentista(
	pk_id_dentista INT AUTO_INCREMENT PRIMARY KEY,
    nome_dentista VARCHAR(100),
    data_nasc_dentista DATE,
    cro_dentista CHAR (7),
    genero_dentista ENUM ('f', 'm', 'o'),
    endereco_dentista VARCHAR(100),
    email_dentista VARCHAR(50),
    telefone_dentista CHAR(13)
);

INSERT INTO Dentista(nome_dentista,data_nasc_dentista,cro_dentista,genero_dentista,endereco_dentista,email_dentista,telefone_dentista) values
('Vitoria Regina', '1954-03-20', '9856214', 'f', 'Rua A, 10', 'vitoria@vitoria.com', '5511963245871'),
('Felipe Araujo', '1932-10-31', '9853214', 'm', 'Rua B, 10', 'felipe@felipe.com', '5511996314562'),
('Daniel Thomaz', '2001-08-28', '2354168', 'm', 'Rua C, 10', 'daniel@daniel.com', '5511998531586'),
('Gabriel Pereira', '1960-04-30', '2145876', 'm', 'Rua D, 10', 'gabriel@gabriel.com', '5511996321458'),
('Angela Souza', '1978-03-20', '8523147', 'f', 'Rua E, 10', 'angela@angela.com', '5511965478932'),
('Vitoria Silva', '2006-12-20', '9632145', 'f', 'Rua F, 10', 'vitoria@vitoria.com', '5511963245871'),
('Andre Lopes', '1995-10-20', '7852310', 'm', 'Rua G, 10', 'andre@amdre.com', '5511998745213'),
('Antonio Gerson', '1998-06-19', '0213654', 'm', 'Rua H, 10', 'antonio@antonio.com', '5511998741325'),
('Emerson Geraldo', '1999-03-20', '9853214', 'm', 'Rua I, 10', 'emerson@emerson.com', '5511998563214'),
('Regina Aparecida', '2001-07-20', '9856214', 'f', 'Rua J, 10', 'regina@regina.com', '5511901235478');

DESCRIBE Dentista;
SELECT*FROM Dentista;

CREATE TABLE Consulta(
	pk_id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    data_consulta DATETIME,
    local_consulta VARCHAR(100),
    descricao_consulta VARCHAR(100)
);

INSERT INTO Consulta (data_consulta, local_consulta, descricao_consulta) values 
	('2024-10-29 12:26:00', 'Rua Dom Carlos, 20 - Sala 10', 'Retirada do Siso'),
    ('2024-08-19 12:26:00', 'Rua Dom Carlos, 20 - Sala 08', 'Implante dentário'),
    ('2024-06-06 12:26:00', 'Rua Dom Carlos, 20 - Sala 02', 'Raspagem'),
    ('2024-09-29 12:26:00', 'Rua Dom Carlos, 20 - Sala 07', 'Limpeza'),
    ('2024-02-29 12:26:00', 'Rua Dom Carlos, 20 - Sala 03', 'Canal'),
    ('2024-03-29 12:26:00', 'Rua Dom Carlos, 20 - Sala 04', 'Extração dente'),
    ('2024-12-29 12:26:00', 'Rua Dom Carlos, 20 - Sala 08', 'Implante dentário'),
    ('2024-11-29 12:26:00', 'Rua Dom Carlos, 20 - Sala 01', 'Raspagem'),
    ('2024-08-29 12:26:00', 'Rua Dom Carlos, 20 - Sala 06', 'Canal'),
    ('2024-07-29 12:26:00', 'Rua Dom Carlos, 20 - Sala 09', 'Limpeza');
    
DESCRIBE Consulta;
SELECT*FROM Consulta;

