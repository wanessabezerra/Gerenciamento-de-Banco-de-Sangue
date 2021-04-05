CREATE TABLE endereco (
    codigo INT(4) PRIMARY KEY,  
    rua VARCHAR(50) NOT NULL,
    numero INT(4) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cep int(10) NOT NULL
);

CREATE TABLE doador (
    codigo INT(4) PRIMARY KEY,  
    nome VARCHAR(100) NOT NULL,
    sexo CHAR(1) NOT NULL,
    tipo_de_sangue CHAR(3) NOT NULL,
    data_de_nascimento VARCHAR(30) NOT NULL,
    cod_endereco INT NOT NULL,
    CONSTRAINT fk_endereco_doador FOREIGN KEY (cod_endereco)
        REFERENCES endereco(codigo)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE telefone(
    cod_doador INT PRIMARY KEY,
    numero_fone CHAR(14) NOT NULL,
    CONSTRAINT fk_doador FOREIGN KEY (cod_doador)
        REFERENCES doador(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE funcionario (
    codigo INT(4) PRIMARY KEY,  
    nome CHAR(100) NOT NULL,
    email CHAR(256) NOT NULL,
    username CHAR(100) NOT NULL,
    cod_endereco INT NOT NULL,
    CONSTRAINT fk_endereco_funcionario FOREIGN KEY (cod_endereco)
        REFERENCES endereco(codigo)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE banco_de_sangue (
    codigo INT(4) PRIMARY KEY,  
    nome VARCHAR(50) NOT NULL,
    capacidade INT(4) NOT NULL
);

CREATE TABLE funcionario_banco_de_sangue (
    cod_funcionario INT NOT NULL,
    cod_banco_de_sangue INT NOT NULL,
    CONSTRAINT fk_funcionario FOREIGN KEY (cod_funcionario)
        REFERENCES funcionario(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT fk_banco_de_sangue FOREIGN KEY (cod_banco_de_sangue) 
        REFERENCES banco_de_sangue(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE bolsa_de_sangue (
    codigo INT(4) PRIMARY KEY,  
    identificacao_da_doacao INT(4) NOT NULL,
    data_hora_coleta DATETIME NOT NULL,
    tipo_de_doacao CHAR(20) NOT NULL,
    data_hora_validade DATETIME NOT NULL,
    cod_tipo_sanguineo INT NOT NULL,
    cod_tipo_de_hemocomponente INT NOT NULL,
    CONSTRAINT fk_tipo_sanguineo FOREIGN KEY (cod_tipo_sanguineo) 
        REFERENCES tipo_sanguineo(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT fk_tipo_de_hemocomponente FOREIGN KEY (cod_tipo_de_hemocomponente) 
        REFERENCES tipo_de_hemocomponente(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE tipo_sanguineo (
    codigo INT(4) PRIMARY KEY,  
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE tipo_de_hemocomponente (
    codigo INT(4) PRIMARY KEY,  
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(256) NOT NULL
);

CREATE TABLE doador_bolsa_de_sangue (
    cod_doador INT NOT NULL,
    cod_bolsa_de_sangue INT NOT NULL,
    CONSTRAINT fk_doador FOREIGN KEY (cod_doador) 
        REFERENCES doador(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT fk_bolsa_de_sangue FOREIGN KEY (cod_bolsa_de_sangue) 
        REFERENCES bolsa_de_sangue(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE bolsa_de_sangue_banco_de_sangue (
    cod_bolsa_de_sangue INT NOT NULL,
    cod_banco_de_sangue	 INT NOT NULL,
    CONSTRAINT fk_bolsa_de_sangue FOREIGN KEY (cod_bolsa_de_sangue) 
        REFERENCES bolsa_de_sangue(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT fk_banco_de_sangue FOREIGN KEY (cod_banco_de_sangue	) 
        REFERENCES banco_de_sangue(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE saida (
    codigo INT(4) PRIMARY KEY,  
    nome_do_hospital VARCHAR(100) NOT NULL,
    nome_do_paciente VARCHAR(100) NOT NULL,
    data_hora_de_saida DATATIME NOT NULL
);

CREATE TABLE bolsa_de_sangue_saida (
    cod_bolsa_de_sangue INT NOT NULL,
    cod_saida INT NOT NULL,
    CONSTRAINT fk_bolsa_de_sangue FOREIGN KEY (cod_bolsa_de_sangue) 
        REFERENCES bolsa_de_sangue(codigo) 
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT fk_saida FOREIGN KEY (cod_saida) 
        REFERENCES saida(codigo)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);
