--Group by having
-- O CNPJ dos jornais que possuem mais de 3 edições
SELECT E.CNPJ, COUNT(*) 
FROM Edicao E
GROUP BY E.CNPJ
HAVING COUNT(*) > 3

--Junção interna
-- Nome do artigo que foi escrito pelo autor de CPF '11111111111'
SELECT a.Nome
FROM Artigo a
JOIN Escreve e ON a.Id = e.Id
WHERE e.CPF = '11111111111';

--Junção externa 
-- Retornar todos os jornais juntamente com seus telefones correspondentes
SELECT J.CNPJ, J.end_cep, J.end_descr, T.telefone
FROM Jornal J
LEFT JOIN Telefones T ON J.CNPJ = T.CNPJ

-- Semi junção 
-- CPF DOS AUTORES COM ARTIGOS ESCRITOS.
SELECT E.CPF
FROM ESCREVE E
WHERE E.ID IN (
    SELECT A.ID
    FROM ARTIGO A
);

-- Anti junção
-- A data e hora das edições que não possuem versão digital. 
SELECT data_e_hora
FROM Edição e
WHERE NOT EXISTS (
    SELECT *
    FROM Digital d
    WHERE d.data_e_hora = e.data_e_hora AND d.CNPJ = e.CNPJ
);

-- Escalar
-- O cnpj do jornal que tem mais impressões
SELECT E.CNPJ
FROM Edicao E 
JOIN FISICO F ON E.CNPJ = F.CNPJ
WHERE F.num_impressoes = 
(SELECT max(F1.num_impressoes)
FROM FISICO F1)

-- Tipo linha 
-- O Cep do jornal com telefone 90901234
SELECT end_cep
FROM Jornal J
WHERE J.CNPJ IN (SELECT CNPJ 
FROM Telefones
WHERE telefone = ‘90901234’)

-- Tipo Tabela
-- Os jornais que tiveram edições no dia 15 de março de 2024 as 17:00
SELECT J.CNPJ, J.end_cep, J.end_descr
FROM Jornal J
WHERE J.CNPJ IN (SELECT CNPJ 
FROM Edicao 
WHERE data_hora ='2024-03-15 17:00:00');

--OPERAÇÃO DE UNIÃO
SELECT C.CPF
FROM COLABORADOR C 
UNION 
SELECT E.CPF
FROM EDITOR E
