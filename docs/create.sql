CREATE TABLE `doador` (
  `codigo` INT(4) PRIMARY KEY,  
  `nome` VARCHAR(100) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `tipo_de_sangue` CHAR(3) NOT NULL,
  `data_de_nascimento` VARCHAR(30) NOT NULL,
  `cod_endereco` INT NOT NULL,
  CONSTRAINT `fk_endereco` FOREIGN KEY (`cod_endereco`) REFERENCES endereco(codigo) on delete set null
);

CREATE TABLE `telefone` (
  `cod_doador` INT PRIMARY KEY,
  `numero_fone` CHAR(14) NOT NULL,
  CONSTRAINT `fk_doador` FOREIGN KEY (`cod_doador`) REFERENCES doador(codigo) on delete set null
);

CREATE TABLE `endereco` (
  `codigo` INT(4) PRIMARY KEY,  
  `rua` VARCHAR(50) NOT NULL,
  `numero` INT(4) NOT NULL,
  `bairro` VARCHAR(50) NOT NULL,
  `cidade` VARCHAR(50) NOT NULL,
  `estado` VARCHAR(50) NOT NULL,
  `cep` int(10) NOT NULL,
);

CREATE TABLE `funcionario` (
  `codigo` INT(4) PRIMARY KEY,  
  `nome` CHAR(100) NOT NULL,
  `email` CHAR(256) NOT NULL,
  `username` CHAR(100) NOT NULL,
  UNIQUE KEY `username` (`username`)
  CONSTRAINT `fk_doador` FOREIGN KEY (`cod_doador`) REFERENCES doador(codigo) on delete set null
  foreign key (cod_endereco) references funcionario(codigo) on delete set null
);

CREATE TABLE `banco_de_sangue` (
  `codigo` INT(4) PRIMARY KEY,  
  `nome` VARCHAR(50) NOT NULL,
  `capacidade` INT(4) NOT NULL,
);

CREATE TABLE `bolsa_de_sangue` (
  `codigo` INT(4) PRIMARY KEY,  
  `identificacao_da_doacao` INT(4) NOT NULL,
  `data_hora_coleta` DATATIME NOT NULL,
  `tipo_de_doacao` CHAR(20) NOT NULL,
  `data_hora_validade` DATATIME NOT NULL,
  foreign key (cod_tipo_sanguineo) references tipo_sanguineo(codigo) on delete set null,
  foreign key (cod_tipo_de_hemocomponente) references tipo_de_hemocomponente(codigo) on delete set null
);

CREATE TABLE `tipo_sanguineo` (
  `codigo` INT(4) PRIMARY KEY,  
  `nome` VARCHAR(50) NOT NULL,
);

CREATE TABLE `tipo_de_hemocomponente` (
  `codigo` INT(4) PRIMARY KEY,  
  `nome` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(256) NOT NULL,
);

CREATE TABLE `saida` (
  `codigo` INT(4) PRIMARY KEY,  
  `nome_do_hospital` VARCHAR(100) NOT NULL,
  `nome_do_paciente` VARCHAR(100) NOT NULL,
  `data_hora_de_saida` DATATIME NOT NULL,
);
