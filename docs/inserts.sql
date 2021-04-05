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

INSERT INTO tipo_sanguineo(codigo, nome)
  	VALUES
    		(0512, "O+"),
    		(0513, "O-"),
   		(0514, "A+"),
    		(0515, "A-"),
    		(0516, "B+"),
	 	(0517, "B-"),
    		(0518, "AB+"),
    		(0519, "AB-")
;

INSERT INTO tipo_de_hemocomponente(codigo, nome, descricao)
 	 VALUES
    		(0612, "Sangue total fresco", "Anemia hipovolêmica, disfunção hemostática, coagulopatia"),
    		(0613, "Sangue total estocado", "Anemia hipovolêmica"),
    		(0614, "Concentrado de hemácias", "Anemia normovolêmica"),
    		(0615, "Concentrado de plaquetas", "Trombocitopenia"),
    		(0616, "Plasma Fresco congelado", "Coagulopatia, expansão aguda de volume, hipoproteinemia"),
    		(0617, "Crioprecipitado", "Hipofibrinogenemia, deficiência de von Willebrand e Hemofilia A")
;

INSERT INTO bolsa_de_sangue(codigo, identificacao_da_doacao, data_hora_coleta, tipo_de_doacao, data_hora_validade, cod_tipo_sanguineo, cod_tipo_de_hemocomponente)
  	VALUES
    		(0712, 1010, "2021-03-25 08:55:05", "Doação Voluntária", "2022-03-25 08:55:05", 0512, 0612),
    		(0713, 2020, "2021-02-02 09:32:01", "Doação de Reposição", "2022-02-02 09:32:01", 0513, 0613),
    		(0714, 3030, "2021-01-12 15:25:00", "Doação Voluntária", "2021-01-17 15:25:00", 0514, 0615),
    		(0715, 4040, "2021-03-05 10:18:45", "Doação de Reposição", "2022-03-05 10:18:45", 0515, 0612),
    		(0716, 5050, "2021-02-19 16:25:35", "Doação Voluntária", "2021-03-19 16:25:35", 0516, 0616)
;

INSERT INTO doador_bolsa_de_sangue(cod_doador, cod_bolsa_de_sangue)
  	VALUES
    		(0212, 0712),
    		(0213, 0713),
    		(0214, 0714),
    		(0215, 0715),
    		(0216, 0716)
;

INSERT INTO bolsa_de_sangue_banco_de_sangue(cod_bolsa_de_sangue, cod_banco_de_sangue)
  	VALUES
    		(0712, 0412),
    		(0713, 0412),
    		(0714, 0412),
    		(0715, 0413),
    		(0716, 0414)
;

INSERT INTO saida(codigo, nome_do_hospital, nome_do_paciente, data_hora_de_saida)
  	VALUES
    		(0812, "Hospital Regional", "João Carlos", "2021-03-29 08:55:05"),
    		(0813, "Hospital do Serido", "Matias silva", "2021-04-02 11:25:03"),
    		(0814, "Hospital Thiago Dias", "Ana Maria", "2021-03-07 17:29:00"),
    		(0815, "Hospital Onofre", "Laura Medeiros", "2021-03-05 15:40:12"),
    		(0816, "Hospital São Lucas", "Pedro Luiz", "2021-02-14 19:45:15")
;

INSERT INTO bolsa_de_sangue_saida(cod_bolsa_de_sangue, cod_saida)
  	VALUES
    		(0712, 0812),
    		(0713, 0812),
    		(0714, 0813),
    		(0715, 0814),
    		(0716, 0816)    
;
