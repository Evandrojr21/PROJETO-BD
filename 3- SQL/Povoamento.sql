-- Tabela Jornal
INSERT INTO Jornal (CNPJ, end_cep, end_descr)
VALUES ('11111111111111', '12345678', 'Rua Exemplo, 123');
INSERT INTO Jornal (CNPJ, end_cep, end_descr)
VALUES ('22222222222222', '23456789', 'Avenida Teste, 456');
INSERT INTO Jornal (CNPJ, end_cep, end_descr)
VALUES ('33333333333333', '34567890', 'Praça Modelo, 789');
INSERT INTO Jornal (CNPJ, end_cep, end_descr)
VALUES ('44444444444444', '45678901', 'Alameda Amostra, 012');
INSERT INTO Jornal (CNPJ, end_cep, end_descr)
VALUES ('55555555555555', '56789012', 'Estrada Demonstração, 345');

-- Tabela Telefones
INSERT INTO Telefones (CNPJ, telefone)
VALUES ('11111111111111', '111-111-1111');
INSERT INTO Telefones (CNPJ, telefone)
VALUES ('22222222222222', '222-222-2222');
INSERT INTO Telefones (CNPJ, telefone)
VALUES ('33333333333333', '333-333-3333');
INSERT INTO Telefones (CNPJ, telefone)
VALUES ('44444444444444', '444-444-4444');
INSERT INTO Telefones (CNPJ, telefone)
VALUES ('55555555555555', '555-555-5555');

-- Tabela Edição
INSERT INTO Edição (CNPJ, data_hora)
VALUES ('11111111111111', TIMESTAMP '2024-03-17 10:00:00');
INSERT INTO Edição (CNPJ, data_hora)
VALUES ('22222222222222', TIMESTAMP '2024-03-17 11:00:00');
INSERT INTO Edição (CNPJ, data_hora)
VALUES ('33333333333333', TIMESTAMP '2024-03-17 12:00:00');
INSERT INTO Edição (CNPJ, data_hora)
VALUES ('44444444444444', TIMESTAMP '2024-03-17 13:00:00');
INSERT INTO Edição (CNPJ, data_hora)
VALUES ('55555555555555', TIMESTAMP '2024-03-15 17:00:00');

-- Tabela Físico
INSERT INTO Físico (data_hora, CNPJ, num_impressoes)
VALUES (TIMESTAMP '2024-03-17 10:00:00', '11111111111111', 1000);
INSERT INTO Físico (data_hora, CNPJ, num_impressoes)
VALUES (TIMESTAMP '2024-03-17 11:00:00', '22222222222222', 1500);
INSERT INTO Físico (data_hora, CNPJ, num_impressoes)
VALUES (TIMESTAMP '2024-03-17 12:00:00', '33333333333333', 1200);
INSERT INTO Físico (data_hora, CNPJ, num_impressoes)
VALUES (TIMESTAMP '2024-03-17 13:00:00', '44444444444444', 800);
INSERT INTO Físico (data_hora, CNPJ, num_impressoes)
VALUES (TIMESTAMP '2024-03-15 17:00:00', '55555555555555', 2000);

-- Tabela Digital
INSERT INTO Digital (data_hora, CNPJ, URL_Site)
VALUES (TIMESTAMP '2024-03-17 10:00:00', '11111111111111', 'http://www.jornal1.com.br');
INSERT INTO Digital (data_hora, CNPJ, URL_Site)
VALUES (TIMESTAMP '2024-03-17 11:00:00', '22222222222222', 'http://www.jornal2.com.br');
INSERT INTO Digital (data_hora, CNPJ, URL_Site)
VALUES (TIMESTAMP '2024-03-17 12:00:00', '33333333333333', 'http://www.jornal3.com.br');
INSERT INTO Digital (data_hora, CNPJ, URL_Site)
VALUES (TIMESTAMP '2024-03-17 13:00:00', '44444444444444', 'http://www.jornal4.com.br');
INSERT INTO Digital (data_hora, CNPJ, URL_Site)
VALUES (TIMESTAMP '2024-03-15 17:00:00', '55555555555555', 'http://www.jornal5.com.br');

-- Tabela Autor
INSERT INTO Autor (CPF, CPF_principal)
VALUES ('11111111111', NULL);
INSERT INTO Autor (CPF, CPF_principal)
VALUES ('22222222222', '11111111111');
INSERT INTO Autor (CPF, CPF_principal)
VALUES ('33333333333', '11111111111');
INSERT INTO Autor (CPF, CPF_principal)
VALUES ('44444444444', '22222222222');
INSERT INTO Autor (CPF, CPF_principal)
VALUES ('55555555555', '22222222222');

-- Tabela Editor
INSERT INTO Editor (CPF)
VALUES ('11111111111');
INSERT INTO Editor (CPF)
VALUES ('22222222222');
INSERT INTO Editor (CPF)
VALUES ('33333333333');
INSERT INTO Editor (CPF)
VALUES ('44444444444');
INSERT INTO Editor (CPF)
VALUES ('55555555555');

-- Tabela Artigo
INSERT INTO Artigo (Id, Nome)
VALUES (1, 'Artigo 1');
INSERT INTO Artigo (Id, Nome)
VALUES (2, 'Artigo 2');
INSERT INTO Artigo (Id, Nome)
VALUES (3, 'Artigo 3');
INSERT INTO Artigo (Id, Nome)
VALUES (4, 'Artigo 4');
INSERT INTO Artigo (Id, Nome)
VALUES (5, 'Artigo 5');

-- Tabela Seção
INSERT INTO Secao (COD, Id)
VALUES (1, 1);
INSERT INTO Secao (COD, Id)
VALUES (2, 2);
INSERT INTO Secao (COD, Id)
VALUES (3, 3);
INSERT INTO Secao (COD, Id)
VALUES (4, 4);
INSERT INTO Secao (COD, Id)
VALUES (5, 5);

-- Tabela Possui
INSERT INTO Possui (data_hora, CNPJ, Id)
VALUES (TIMESTAMP '2024-03-17 10:00:00', '11111111111111', 1);
INSERT INTO Possui (data_hora, CNPJ, Id)
VALUES (TIMESTAMP '2024-03-17 11:00:00', '22222222222222', 2);
INSERT INTO Possui (data_hora, CNPJ, Id)
VALUES (TIMESTAMP '2024-03-17 12:00:00', '33333333333333', 3);
INSERT INTO Possui (data_hora, CNPJ, Id)
VALUES (TIMESTAMP '2024-03-17 13:00:00', '44444444444444', 4);
INSERT INTO Possui (data_hora, CNPJ, Id)
VALUES (TIMESTAMP '2024-03-15 17:00:00', '55555555555555', 5);

-- Tabela Escreve
INSERT INTO Escreve (Id, CPF, data_hora)
VALUES (1, '11111111111', TIMESTAMP '2024-03-17 10:00:00');
INSERT INTO Escreve (Id, CPF, data_hora)
VALUES (2, '22222222222', TIMESTAMP '2024-03-17 11:00:00');
INSERT INTO Escreve (Id, CPF, data_hora)
VALUES (3, '33333333333', TIMESTAMP '2024-03-17 12:00:00');
INSERT INTO Escreve (Id, CPF, data_hora)
VALUES (4, '44444444444', TIMESTAMP '2024-03-17 13:00:00');
INSERT INTO Escreve (Id, CPF, data_hora)
VALUES (5, '55555555555', TIMESTAMP '2024-03-17 14:00:00');

-- Tabela Colaborador
INSERT INTO Colaborador (CPF)
VALUES ('11111111112');
INSERT INTO Colaborador (CPF)
VALUES ('22222222221');
INSERT INTO Colaborador (CPF)
VALUES ('33333333331');
INSERT INTO Colaborador (CPF)
VALUES ('44444444441');
INSERT INTO Colaborador (CPF)
VALUES ('55555555551');

-- Tabela Coordena
INSERT INTO Coordena (CPF, COD)
VALUES ('11111111111', 1);
INSERT INTO Coordena (CPF, COD)
VALUES ('22222222222', 2);
INSERT INTO Coordena (CPF, COD)
VALUES ('33333333333', 3);
INSERT INTO Coordena (CPF, COD)
VALUES ('44444444444', 4);
INSERT INTO Coordena (CPF, COD)
VALUES ('55555555555', 5);

-- Tabela Participa
INSERT INTO Participa (CPF_coordena, CPF_colab)
VALUES ('11111111111', '22222222221');
INSERT INTO Participa (CPF_coordena, CPF_colab)
VALUES ('22222222222', '33333333331');
INSERT INTO Participa (CPF_coordena, CPF_colab)
VALUES ('33333333333', '44444444441');
INSERT INTO Participa (CPF_coordena, CPF_colab)
VALUES ('44444444444', '55555555551');
INSERT INTO Participa (CPF_coordena, CPF_colab)
VALUES ('55555555555', '11111111112');

