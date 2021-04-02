CREATE TABLE `doador` (
  `codigo` int(4) NOT NULL,  
  `nome` varchar(100) NOT NULL,
  `sexo` char(1) NOT NULL,
  `tipo_de_sangue` char(3) NOT NULL,
  `data_de_nascimento` varchar(30) NOT NULL,
  PRIMARY KEY (`codigo`),
  foreign key (cod_endereco) references doador(codigo) on delete set null
);

CREATE TABLE `endereco` (
  `codigo` int(4) NOT NULL,  
  `rua` varchar(50) NOT NULL,
  `numero` int(4) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cep` int(10) NOT NULL,
  PRIMARY KEY (`codigo`),
);


CREATE TABLE `funcionario` (
  `codigo` int(4) NOT NULL,  
  `nome` char(100) NOT NULL,
  `email` char(256) NOT NULL,
  `username` char(100) NOT NULL,
  PRIMARY KEY (`matricula`),
  UNIQUE KEY `username` (`username`)
  foreign key (cod_endereco) references funcionario(codigo) on delete set null
);
