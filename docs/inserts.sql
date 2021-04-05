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
