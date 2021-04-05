INSERT INTO endereco(codigo, rua, numero, bairro, cidade, estado, cep)
	VALUES
		(0112, "Rua Pedro Velho", 591, "centro", "Caico", "RN", 59300000),
		(0113, "Av Serido", 380, "centro", "Caico", "RN", 59300000),
		(0114, "Rua Joel Damasceno", 196, "centro", "Caico", "RN", 59300000),
		(0115, "Av Josias Miguel", 623, "Nova caicó", "Caico", "RN", 59300000),
		(0116, "Rua Renato Dantas", 243, "centro", "Caico", "RN", 59300000)
;

INSERT INTO doador(codigo, nome, sexo, tipo_de_sangue, data_de_nascimento, cod_endereco)
	VALUES
		(0212, "Maria", "F", "O+", "1990-05-12", 0112),
		(0213, "Julia", "F", "O-", "1995-07-10", 0113),
		(0214, "Matheus", "M", "A+", "1990-04-08", 0114),
		(0215, "João", "M", "B-", "1994-12-10", 0115),
		(0216, "Ana", "F", "AB+", "1989-11-27", 0116)
;

INSERT INTO telefone(cod_doador, numero_fone)
	VALUES
		(0212, "(84)9979-3943"),
    		(0213, "(84)9834-3753"),
    		(0214, "(84)9987-8863"),
    		(0215, "(84)9836-9876"),
    		(0216, "(84)9820-2469")
;

INSERT INTO funcionario (codigo, nome, email, username, cod_endereco)
	VALUES
   		(0312, "Marcos", "marcos10@hotmail.com", "marcos_10", 0116),
    		(0313, "José", "jose1234@gmail.com", "jose_123", 0114),
    		(0314, "Mariana", "mariana12@outlook.com", "mariana_12", 0113),
    		(0315, "Wanessa","wanessaparelhas@gmail.com", "wanessa_parelhas", 0112),
    		(0316, "Lucas", "lucas321@gmail.com", "lucas_321", 0115);
;

INSERT INTO banco_de_sangue(codigo, nome, capacidade)
	VALUES
   		(0412, "Hemocentro", 6000),
    		(0413, "Hemonorte", 4600),
    		(0414, "Hemosul", 4000),
    		(0415, "Hemoleste", 4400),
    		(0416, "Hemoeste", 4000)
;

INSERT INTO funcionario_banco_de_sangue (cod_funcionario, cod_banco_de_sangue)
	VALUES
   		(0312, 0412),
    		(0313, 0413),
    		(0314, 0414),
    		(0315, 0415),
    		(0316, 0416)
;
