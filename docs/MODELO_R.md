# Modelo Relacional

Doador(_codigo_, nome, sexo, tipo_de_sangue, data_de_nascimento, **cod_endereco**)  
Telefone(**_cod_doador_**, numero_fone)  
Endereco(_codigo_, rua, numero, bairro, cidade, estado, cep)  
Funcionario(_codigo_, username, email, nome, **cod_endereco**)  
Banco_de_Sangue(_codigo_, nome, capacidade)  
FuncionarioBanco_de_Sangue(**_cod_funcionario_**, **_cod_banco_de_sangue_**)  
Bolsa_de_Sangue(_codigo_, identificacao_da_doacao, data_hora_da_coleta, tipo_de_doacao, data_hora_da_validade, status, situacao,**cod_tipo_sanguineo**,**cod_tipo_de_hemocomponente**)  
Tipo_Sanguineo(_codigo_, nome)  
Tipo_de_Hemocomponente(_codigo_, nome, descricao)  
DoadorBolsa_de_Sangue(**_cod_doador_**, **_cod_bolsa_de_sangue_**)  
Bolsa_de_SangueBanco_de_Sangue(**_cod_bolsa_de_sangue_**, **_cod_banco_de_sangue_**)  
Saida(_codigo_, nome_do_hospital, nome_do_paciente, data_hora_de_saida)  
Bolsa_de_SangueSaida(**_cod_bolsa_de_sangue_**,**_cod_saida_**)
