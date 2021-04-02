CREATE TABLE `doador` (
  `codigo` int(4) NOT NULL,  
  `nome` varchar(100) NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  `tipo_de_sangue` char(3) NOT NULL,
  `data_de_nascimento` varchar(30) NOT NULL,
  PRIMARY KEY (`codigo`),
  foreign key (cod_endereco) references doador(codigo) on delete set null
);
