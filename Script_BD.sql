drop table aluno;
drop database biblioteca;
create database biblioteca;

create table aluno(
idaluno INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)NOT NULL,
e_mail VARCHAR(45)NOT NULL,
telefone VARCHAR(19)NOT NULL);

create table acervo(
isbn INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(45) NOT NULL,
autor VARCHAR(45)NOT NULL,
genero VARCHAR(45)NOT NULL, 
estante INT NOT NULL,
status_ VARCHAR(20)NOT NULL);

create table endereco(
cep INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
numero VARCHAR(4)NOT NULL,
cidade VARCHAR(45)NOT NULL);

create table aluno_endereco(
FOREIGN KEY(idaluno) REFERENCES aluno(idaluno),
FOREIGN KEY(idendereco) REFERENCES endereco(idendereco));

create table funcionario_endereco(
FOREIGN KEY(idfuncionario) REFERENCES funcionario(idfuncionario),
FOREIGN KEY(idendereco) REFERENCES endereco(idendereco));

create table emprestimo(
idemprestimo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
data_emprestimo VARCHAR(10)NOT NULL,
data_devolucao VARCHAR(10)NOT NULL,
FOREIGN KEY(idaluno) REFERENCES aluno(idaluno),
FOREIGN KEY(idfuncionario) REFERENCES funcionario(idfuncionario),
FOREIGN KEY(isbn) REFERENCES acervo(isbn));

create table funcionario(
idfuncionario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)NOT NULL,
e_mail VARCHAR(45)NOT NULL,
telefone VARCHAR(19)NOT NULL,
inic_expediente VARCHAR(5)NOT NULL,
fim_expediente VARCHAR(5)NOT NULL,
FOREIGN KEY(idfuncionario_endereco) REFERENCES funcionario_endereco(idfuncionario_endereco));


