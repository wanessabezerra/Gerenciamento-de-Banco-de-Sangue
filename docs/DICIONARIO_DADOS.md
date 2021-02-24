# Dicionário de dados
Dicionário de dados centraliza informações sobre o conjunto de dados (dataset) sob análise. Seu propósito é melhorar a comunicação entre todos os envolvidos no projeto, alem de ser um repositório (documento) que descreve, de forma estruturada, o significado, origem, relacionamento e uso dos dados.

## Tabela: Banco de Sangue
      
| Atributo      | Chave      | Tipo de dado  | Tamanho      | Descrição                                       |
|---------------|------------|---------------|--------------|-------------------------------------------------|
| código        |  PRIMARY   |   NUMERIC     |      4       | Identificador incremental de banco de sangue.   |
| nome          | NOT NULL   |   CHAR[100]   |     100      | Limite de 100 caracteres.                       |
| capacidade    | NOT NULL   |   NUMERIC     |      4       | Capacidade maxima do banco.                     |


## Tabela: Bolsa de Sangue
       
| Atributo                | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-------------------------|------------|---------------|--------------|-----------------------------------------------|
| identificacao_da_doação |  PRIMARY   |   NUMERIC     |     4        | Identificador incremental de bolsa de sangue. |
| data coleta             | NOT NULL   |   NUMERIC     |     10       | Coleta de sangue.                             |
| hora coleta             | NOT NUL    |   TIME        |     10       | Horario da realização da coleta.              |
| tipo de doação          | NOT NULL   |   CHAR[20]    |     20       | Se a doação é Voluntária, Autóloga.           |
| tipo_sanguineo          | NOT NULL   |   CHAR[3]     |      3       | Identificação do tipo sanguineo coletado.     |
| hemocomponente          | NOT NULL   |   CHAR[20]    |     20       | Tipo de hemocomponente presente.              |
| data_de_validade        | NOT NULL   |   NUMERIC     |     10       | Data de validade do sangue coletado.          |
| hora_de_validade        | NOT NULL   |   TIME        |     10       | Hora de validade do sngue coletado.           |

## Tabela: Tipo sanguíneo
    
| Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-----------------|------------|---------------|--------------|-----------------------------------------------|
| codigo          |  PRIMARY   |   NUMERIC     |      4       | Identificador incremental de tipo sanguineo.  |
| nome            | NOT NULL   |   CHAR[100]   |      100     | Nome do tipo sanguíneo.                               |


## Tabela: Tipo de hemocomponente
       
| Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-----------------|------------|---------------|--------------|-----------------------------------------------|
| codigo          |  PRIMARY   |  NUMERIC      |     4        | Identificador incremental de hemocomponente.  |
| nome            | NOT NULL   |   CHAR[100]   |     100      | Nome do homocomponente.                               |
| descrição       | NOT NULL   |   CHAR[256]   |    256       | Descrição do homocomponente.                  |


## Tabela: Saída
       
| Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-----------------|------------|---------------|--------------|-----------------------------------------------|
| nome_do_hospital| NOT NULL   |   CHAR[256]   |     256      | Local de saida.                               |
| nome_do_paciente| NOT NULL   |   CHAR[256]   |     256      | Nome do paciente.                             |
| data            | NOT NULL   |   NUMERIC     |     10       | Data de saida.                                |

## Tabela: Doador
       
| Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-----------------|------------|---------------|--------------|-----------------------------------------------| 
| codigo          |  PRIMARY   |  NUMERIC      |     4        | Identificador incremental de doador.          |
| nome            |  PRIMARY   |  CHAR[100]    |      100     | Nome do doador.           |
| sexo            | NOT NULL   |  CHAR[100]    |      100     | Sexo do doador.                               |
| tipo de sangue  | NOT NULL   |  CHAR[3]      |      3       | Tipo sanguineo.                               |
| endereço        | NOT NULL   |  CHAR[100]    |      100     | Localização do doador.                        |
| data de nasc    | NOT NULL   |   NUMERIC     |      10      | Data formato (00/00/0000)                     |
| telefone        | NOT NULL   |   CHAR[14]    |       14     | Telefone com formato: (XX)XXXXX-XXXX          |

## Tabela: Funcionario  
     
| Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-----------------|------------|---------------|--------------|-----------------------------------------------|
| codigo          |  PRIMARY   |   NUMERIC     |      4       | Identificador incremental de funcionario.     |
| nome            | NOT NULL   |   CHAR[100]   |      100     | Nome do usuario/funcionario de acesso.        |
| e-mail          | NOT NULL   |   CHAR[256]   |     256      | Email com limite padrão de 256 caracteres.    |
| username        | NOT NULL   |   CHAR[100]   |      100     | Identificação unica.                          |



## Tabela: Endereço
      
| Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-----------------|------------|---------------|--------------|-----------------------------------------------|
| codigo          |  PRIMARY   |   NUMERIC     |      4       |  Identificador incremental de endereço.       |
| rua             | NOT NULL   |   CHAR[50]    |      50      |  Rua limitada a 50 caracteres.                |
| numero          | NOT NULL   |   NUMERIC     |       4      |  Numero limitada a 4 caracteres.              |
| bairro          | NOT NULL   |   CHAR[50]    |      50      |  Bairro limitada a 50 caracteres.             |
| estado          | NOT NULL   |   CHAR[50]    |      50      |  Estado limitada a 50 caracteres.             |
| cidade          | NOT NULL   |   CHAR[100]   |      50      |  Cidade limitada a 50 caracteres.             |
| cep             | NOT NULL   |   NUMERIC     |      10      |  Cep limitada a 10 caracteres.                |


### Referências

[Exemplo de Dicionário - IBM](https://publib.boulder.ibm.com/tividd/td/ITMFTP/GC23-4803-00/pt_BR/HTML/TMTPmst80.htm)

[Dicionário de Dados](https://www.luis.blog.br/dicionario-de-dados.html)

