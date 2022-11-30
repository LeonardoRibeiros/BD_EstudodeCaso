drop database biblioteca;
create database biblioteca;
use biblioteca;

create table endereco(
cep INT NOT NULL PRIMARY KEY,
numero VARCHAR(4)NOT NULL,
cidade VARCHAR(45)NOT NULL);

create table aluno(
idaluno INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)NOT NULL,
e_mail VARCHAR(45)NOT NULL,
telefone VARCHAR(20)NOT NULL);

create table funcionario(
idfuncionario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)NOT NULL,
e_mail VARCHAR(45)NOT NULL,
telefone VARCHAR(19)NOT NULL,
inic_expediente VARCHAR(10)NOT NULL,
fim_expediente VARCHAR(10)NOT NULL);

create table aluno_endereco(
idaluno INT,
cep VARCHAR(256),
FOREIGN KEY(idaluno) REFERENCES aluno(idaluno),
FOREIGN KEY(cep) REFERENCES endereco(cep));

create table funcionario_endereco(
idfuncionario INT,
cep VARCHAR(256),
FOREIGN KEY(idfuncionario) REFERENCES funcionario(idfuncionario),
FOREIGN KEY(cep) REFERENCES endereco(cep));

create table acervo(
isbn INT NOT NULL PRIMARY KEY,
titulo VARCHAR(45) NOT NULL,
autor VARCHAR(45)NOT NULL,
genero VARCHAR(45)NOT NULL, 
estante INT NOT NULL,
status_ VARCHAR(20)NOT NULL);

create table emprestimo(
idemprestimo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
data_emprestimo VARCHAR(10)NOT NULL,
data_devolucao VARCHAR(10)NOT NULL,
idaluno int,
idfuncionario int,
isbn VARCHAR(256),
FOREIGN KEY(idaluno) REFERENCES aluno(idaluno),
FOREIGN KEY(idfuncionario) REFERENCES funcionario(idfuncionario),
FOREIGN KEY(isbn) REFERENCES acervo(isbn));

insert into aluno (nome, e_mail, telefone) 
values ('Amil Neely', 'aneely0@storify.com', '(426) 1457687'),
('Chancey Moxon', 'cmoxon1@jalbum.net', '(406) 7861532'),
('Rafe Cammack', 'rcammack2@alibaba.com', '(550) 3835444'),
('Dulcy Smoughton', 'dsmoughton3@technorati.com', '(742) 7851218'),
('Dorene Bygraves', 'dbygraves4@trellian.com', '(805) 8888369'),
('Thelma Bourgour', 'tbourgour5@prnewswire.com', '(549) 7297871'),
('Drona Miere', 'dmiere6@squarespace.com', '(459) 1211145'),
('Adolphus Hulburd', 'ahulburd7@gravatar.com', '(656) 3204738'),
('Madonna Barcke', 'mbarcke8@census.gov', '(241) 9140484'),
('Hughie McClancy', 'hmcclancy9@nhs.uk', '(894) 7482533');

insert into acervo (isbn, titulo, autor, genero, estante, status_) 
values (9255991698, 'A Magnificent Haunting', 'Zebulon Vanyatin','Suspense', 2, 'Disponivel'),
(5415508708, 'Taking Woodstock', 'Karylin Willingale', 'Romance', 2, 'Indisponivel'),
(8117316870, 'Lucky: No Time For Love', 'Richie Vickerman', 'Romance', 9, 'Disponivel'),
(4622855925, 'Star Trek: Of Gods and Men', 'Tiphany Swenson', 'Sci-fi', 3, 'Disponivel'),
(9913422485, 'Man in the Iron Mask, The', 'Clarissa Barkhouse', 'Drama', 7, 'Indisponivel'),
(5018562102, '49th Parallel', 'Willie Syder', 'Fantasia', 6, 'Indisponivel'),
(3457704422, 'No Man of Her Own', 'Colet MacLeese', 'Romance', 7, 'Indisponivel'),
(9478963112, 'K2', 'Page Stadding', 'Sci-fi', 10, 'Indisponivel'),
(1025861914, 'Nights and Weekends', 'Millard Causley', 'Aventura', 4, 'Disponivel'),
(9996954366, 'Days of Glory', 'Noland Orchart', 'Fantasia', 10, 'Indisponivel');

insert into endereco (cep, numero, cidade) 
values (11065-101, 2454, 'Blumenau'),
(88037375, 26, 'Blumenau'),
(88131601, 360, 'Blumenau'),
(88160076, 5225, 'Blumenau'),
(88340479, 66, 'Blumenau'),
(88701210, 222, 'Blumenau'),
(89010000, 671, 'Blumenau'),
(89010001, 52, 'Blumenau'),
(07727585, 1422, 'Blumenau'),
(89010016, 2454, 'Blumenau');

insert into funcionario (nome, e_mail, telefone, inic_expediente, fim_expediente) 
values ('Sampson Wainscot', 'swainscot0@elpais.com', '(444) 6267010', '7:00 AM', '5:00 PM'),
('Blanche Fossitt', 'bfossitt1@taobao.com', '(891) 1298142', '2:30 PM', '10:30 PM'),
('Yuma Hamsley', 'yhamsley2@friendfeed.com', '(582) 2807239', '7:00 AM', '5:00 PM'),
('Maurise Bracken', 'mbracken3@drupal.org', '(600) 4990205', '2:30 PM', '10:30 PM'),
('Inna Glawsop', 'iglawsop4@discovery.com', '(676) 3218457', '7:30 AM', '5:30 PM'),
('Lazaro Esposito', 'lesposito5@nps.gov', '(434) 1948451', '1:30 PM', '9:30 PM'),
('Ford Flowerdew', 'fflowerdew6@nationalgeographic.com', '(885) 5982847', '1:30 PM', '9:30 PM'),
('Keeley Eynaud', 'keynaud7@springer.com', '(812) 2587816', '1:30 PM', '9:30 PM'),
('Adelbert Burl', 'aburl8@wunderground.com', '(491) 5595175', '7:30 AM', '5:30 PM'),
('Venita McCue', 'vmccue9@seattletimes.com', '(398) 4917551', '7:00 AM', '5:00 PM');

insert into emprestimo (data_emprestimo, data_devolucao) 
values ('04/04/2022', '26/05/2022'),
('15/10/2022', '30/11/2022'),
('24/05/2022', '21/06/2022'),
('29/11/2022', '12/12/2022'),
('22/12/2021', '03/01/2022'),
('05/03/2022', '28/04/2022'),
('03/07/2022', '28/08/2022'),
('12/05/2022', '25/06/2022'),
('30/06/2022', '10/07/2022'),
('08/07/2022', '21/08/2022');

update aluno 
set nome = 'Robby Brayford', e_mail= 'rbrayford0@wix.com' where idaluno = 1;
update aluno 
set nome = 'Werner Baily', e_mail= 'wbaily1@usgs.gov' where idaluno = 5;
update aluno 
set nome = 'Chloette Rosenwasser', e_mail= 'crosenwasser2@ftc.gov' where idaluno = 2;
update aluno 
set nome = 'Bar Brugger', e_mail= '	bbrugger3@seattletimes.com' where idaluno = 9;
update aluno 
set nome = 'Amby Eddie', e_mail= 'aeddie4@europa.eu' where idaluno = 7;

update acervo
set titulo = 'Abbott and Costello in the Foreign Legion', autor = 'Cecilio Greedy' where isbn = 9255991698;
update acervo
set titulo = 'Progression', autor = 'Derick Marrett' where isbn = 8117316870;
update acervo
set titulo = 'Freaky Friday', autor = 'Hyman Bromehed' where isbn = 1025861914;
update acervo
set titulo = 'Varasto', autor = 'Sibley Hainey' where isbn = 9996954366;
update acervo
set titulo = 'Tyler Perry Meet the Browns', autor = 'Marisa Bullimore' where isbn = 5018562102;

update endereco
set numero = 552 where cep = 11065101;
update endereco
set numero = 672 where cep = 888131601;
update endereco
set numero = 99 where cep = 88160076;
update endereco
set numero = 117 where cep = 88701210;
update endereco
set numero = 1322 where cep = 89010016;

update emprestimo
set data_emprestimo = '10/10/2022' where idemprestimo = 2;
update emprestimo
set data_emprestimo = '22/05/2022' where idemprestimo = 3;
update emprestimo
set data_emprestimo = '07/04/2022' where idemprestimo = 1;
update emprestimo
set data_emprestimo = '10/07/2022' where idemprestimo = 7;
update emprestimo
set data_emprestimo = '09/05/2022' where idemprestimo = 8;

update funcionario 
set nome = 'Wylie Matlock', e_mail = 'wmatlock0@newyorker.com' where idfuncionario = 1;
update funcionario 
set nome = 'Marcie Rebillard', e_mail = 'mrebillard1@utexas.edu' where idfuncionario = 2;
update funcionario 
set nome = 'Berkly Petrelli', e_mail = 'bpetrelli2@is.gd' where idfuncionario = 3;
update funcionario 
set nome = 'Kimmie Garrelts', e_mail = 'kgarrelts3@discuz.net' where idfuncionario = 4;
update funcionario 
set nome = 'Betti Cuppleditch', e_mail = 'bcuppleditch4@rediff.com' where idfuncionario = 5;

delete from aluno where idaluno = 1;
delete from aluno where idaluno = 2;
delete from aluno where idaluno = 3;
delete from aluno where idaluno = 4;
delete from aluno where idaluno = 5;

delete from acervo where isbn = 9255991698;
delete from acervo where isbn = 5415508708;
delete from acervo where isbn = 4622855925;
delete from acervo where isbn = 3457704422;
delete from acervo where isbn = 9996954366;

delete from endereco where cep = 11065101;
delete from endereco where cep = 888131601;
delete from endereco where cep = 88160076;
delete from endereco where cep = 88701210;
delete from endereco where cep = 89010016;

delete from emprestimo where idemprestimo = 1;
delete from emprestimo where idemprestimo = 2;
delete from emprestimo where idemprestimo = 3;
delete from emprestimo where idemprestimo = 4;
delete from emprestimo where idemprestimo = 5;

delete from funcionario where idfuncionario = 1;
delete from funcionario where idfuncionario = 2;
delete from funcionario where idfuncionario = 3;
delete from funcionario where idfuncionario = 4;
delete from funcionario where idfuncionario = 5;

select * from aluno order by idaluno asc;
select * from acervo order by isbn asc;
select * from endereco order by cep asc;
select * from emprestimo order by idemprestimo asc;
select * from funcionario order by idfuncionario asc;

select * from aluno where idaluno = 9;
select * from acervo where isbn = 9478963112;
select * from endereco where cep = 89010000;
select * from emprestimo where idemprestimo = 9;
select * from funcionario where idfuncionario = 9;

select emprestimo.idemprestimo, funcionario.idfuncionario 
from emprestimo inner join funcionario on
emprestimo.idemprestimo = funcionario.idfuncionario;

