-- Criação da tabela Jornal
CREATE TABLE Jornal (
    CNPJ VARCHAR2(14),
    end_cep VARCHAR2(8),
    end_descr VARCHAR2(200),
    CONSTRAINT PK_JORNAL PRIMARY KEY (CNPJ)
);

-- Criação da tabela Telefones
CREATE TABLE Telefones (
    CNPJ VARCHAR2(14),
    telefone VARCHAR2(20),
    CONSTRAINT PK_TELEFONES PRIMARY KEY (CNPJ,telefone),
    CONSTRAINT FK_TELEFONES_JORNAL FOREIGN KEY (CNPJ) REFERENCES Jornal(CNPJ)
);

-- Criação da tabela Edição
CREATE TABLE Edição (
    CNPJ VARCHAR2(14),
    data_hora TIMESTAMP,
    CONSTRAINT PK_EDICAO PRIMARY KEY (CNPJ, data_hora),
    CONSTRAINT FK_EDICAO_JORNAL FOREIGN KEY (CNPJ) REFERENCES Jornal(CNPJ)
);

-- Criação da tabela Físico
CREATE TABLE Físico (
    data_hora TIMESTAMP,
    CNPJ VARCHAR2(14),
    num_impressoes INT,
    CONSTRAINT PK_FISICO PRIMARY KEY (data_hora, CNPJ),
    CONSTRAINT FK_FISICO_EDICAO FOREIGN KEY (CNPJ, data_hora) REFERENCES Edição(CNPJ, data_hora)
);

-- Criação da tabela Digital
CREATE TABLE Digital (
    data_hora TIMESTAMP,
    CNPJ VARCHAR2(14),
    URL_Site VARCHAR2(200),
    CONSTRAINT PK_DIGITAL PRIMARY KEY (data_hora, CNPJ),
    CONSTRAINT FK_DIGITAL_EDICAO FOREIGN KEY (CNPJ, data_hora) REFERENCES Edição(CNPJ, data_hora)
);

-- Criação da tabela Autor
CREATE TABLE Autor (
    CPF VARCHAR2(11),
    CPF_principal VARCHAR2(11),
    CONSTRAINT PK_AUTOR PRIMARY KEY (CPF),
    CONSTRAINT FK_AUTOR FOREIGN KEY (CPF_principal) REFERENCES Autor(CPF)
);

-- Criação da tabela Editor
CREATE TABLE Editor (
    CPF VARCHAR2(11),
    CONSTRAINT PK_EDITOR PRIMARY KEY (CPF)
);

-- Criação da tabela Artigo
CREATE TABLE Artigo (
    Id INT,
    Nome VARCHAR2(200),
    CONSTRAINT PK_ARTIGO PRIMARY KEY (ID)
);

-- Criação da tabela Secao
CREATE TABLE Secao (
    COD INT,
    Id INT UNIQUE,
    CONSTRAINT PK_SECAO PRIMARY KEY (COD),
    CONSTRAINT FK_SECAO FOREIGN KEY (Id) REFERENCES ARTIGO(Id)
);

-- Criação da tabela Possui
CREATE TABLE Possui (
    data_hora TIMESTAMP NOT NULL,
    CNPJ VARCHAR2(14) NOT NULL,
    CPF VARCHAR2(11),
    Id INT,
    CONSTRAINT PK_POSSUI PRIMARY KEY (CNPJ,Id),
    CONSTRAINT FK_POSSUI_EDICAO FOREIGN KEY (CNPJ, data_hora) REFERENCES Edição(CNPJ, data_hora),
    CONSTRAINT FK_POSSUI_EDITOR FOREIGN KEY (CPF) REFERENCES Editor(CPF),
    CONSTRAINT FK_POSSUI_ARTIGO FOREIGN KEY (Id) REFERENCES Artigo(Id)
);

-- Criação da tabela Escreve
CREATE TABLE Escreve (
    Id INT,
    CPF VARCHAR2(11),
    data_hora TIMESTAMP,
    CONSTRAINT PK_ESCREVE PRIMARY KEY (Id, CPF, data_hora),
    CONSTRAINT FK_ESCREVE_ID FOREIGN KEY (Id) REFERENCES ARTIGO(Id),
    CONSTRAINT FK_ESCREVE_CPF FOREIGN KEY (CPF) REFERENCES EDITOR(CPF)
);

-- Criação da tabela Colaborador
CREATE TABLE Colaborador (
    CPF VARCHAR2(11),
    CONSTRAINT PK_COLABORADOR PRIMARY KEY (CPF)
);

-- Criação da tabela Coordena
CREATE TABLE Coordena (
    CPF VARCHAR2(11),
    COD INT,
    CONSTRAINT PK_COORDENA PRIMARY KEY (CPF),
    CONSTRAINT FK_COORDENA_COD FOREIGN KEY (COD) REFERENCES Secao(COD),
    CONSTRAINT FK_COORDENA_CPF FOREIGN KEY (CPF) REFERENCES EDITOR(CPF)
);

-- Criação da tabela Participa
CREATE TABLE Participa (
    CPF_coordena VARCHAR2(11),
    CPF_colab VARCHAR2(11),
    CONSTRAINT PK_PARTICIPA PRIMARY KEY (CPF_coordena, CPF_colab),
    CONSTRAINT FK_PARTICIPA_CPF_COLA FOREIGN KEY (CPF_colab) REFERENCES COLABORADOR(CPF),
    CONSTRAINT FK_PARTICIPA_CPF_COORDENA FOREIGN KEY (CPF_coordena) REFERENCES COORDENA(CPF)
);
