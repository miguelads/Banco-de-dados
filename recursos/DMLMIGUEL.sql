CREATE DATABASE BD_DML

CREATE TABLE TB_DML(
MATRICULA TINYINT PRIMARY KEY, NOME VARCHAR(100), 
SEXO CHAR(1))

/*COMANDO PARA ADICIONAR UMA COLUNA NA TABELA TB_DML*/

ALTER TABLE TB_DML
ADD DTNASC DATETIME, CPF CHAR(11)

/*SE CASO QUISER ALTERAR UM TIPO DE UMA COLUNA ESPECIFICA USASSE O COLUMN EX:
 ALTERAMOS O TIPO DA COLUNA DTNASC DE DATETIME PARA DATE
*/
ALTER TABLE TB_DML
ALTER COLUMN DTNASC DATE

/*DELETANDO UMA COLUNA NA TABELA USANDO O COMANDO DROP*/
ALTER TABLE TB_DML
DROP COLUMN CPF

/*INSERINDO REGISTROS EXPLICITANDO AS COLUNAS*/
INSERT INTO TB_DML(MATRICULA,NOME,SEXO, DTNASC)
VALUES(1, 'MIGUEL PEREIRA' , 'M', '1986-12-16')

/*INSERINDO V�RIOS REGISTROS COM APENAS 1 INSERT*/
INSERT INTO TB_DML (MATRICULA, NOME, DTNASC, SEXO) 
VALUES (2, 'MARCELO SANTIAGO', '1987-03-06','M'), 
	(3,'EVALDO NORONHA','1988-06-04','M'),
	(4,'ALICE VIANA','2000-06-04','F')

/*
INSERINDO REGISTROS N�O EXPLICITANDO AS COLUNAS
OBS: AO EXECUTAR VAI APRESENTAR ERRO, DEPOIS MUDAR A ORDEM
DO VALOR 'M' PELA '2002-01-10', NO CASO TEM QUE COLOCAR NA ORDEM QUE AS COLUNAS FORAM CRIADAS
*/
INSERT TB_DML
VALUES (5, 'VITORIA KELLY', 'F', '2002-01-10')

/*ATUALIZANDO OS DADOS DE UMA COLUNA DO REGISTRO*/
UPDATE TB_DML
SET SEXO = 'H' WHERE NOME = 'MARCELO SANTIAGO' AND MATRICULA = 2

/*ATUALIZANDO OS DADOS DE MAIS DE UMA COLUNA DO REGISTRO*/
UPDATE TB_DML
SET SEXO = 'M', DTNASC = '1997-07-01'
WHERE NOME = 'MARCELO SANTIAGO'

/*DELETANDO O REGISTRO DA TABELA*/
DELETE FROM TB_DML
WHERE NOME = 'VITORIA KELLY'
AND MATRICULA = 5


SELECT * FROM TB_DML