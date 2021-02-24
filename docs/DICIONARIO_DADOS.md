# Dicionário de dados
Dicionário de dados centraliza informações sobre o conjunto de dados (dataset) sob análise. Seu propósito é melhorar a comunicação entre todos os envolvidos no projeto, alem de ser um repositório (documento) que descreve, de forma estruturada, o significado, origem, relacionamento e uso dos dados.

Entidade: Banco de Sangue
---------------------        
Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
--------        |------------|---------------|--------------|-----------------------------------------------|
código          |  PRIMARY   |   NUMERIC     |      4       | Identificador incremental de banco de sangue. |
--------        |            |               |              |                                               |
nome            | NOT NULL   |   CHAR[100]   |     100      | Limite de 100 caracteres.                     |
--------        |            |               |              |                                               |
capacidade      | NOT NULL   |   NUMERIC     |              |                                               |
--------        |------------|---------------|--------------|-----------------------------------------------|

Entidade: Bolsa de Sangue
---------------------        
Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                            |
--------        |------------|---------------|--------------|--------------------------------------|
id da doação    |  PRIMARY   |   NUMERIC     |              |                                      |
--------        |            |               |              |                                      |
data coleta     | NOT NULL   |   NUMERIC     |              |                                      |
--------        |            |               |              |                                      |
hora coleta     | NOT NUL    |   TIME        |              |                                      |
--------        |            |               |              |                                      |
tipo de doação  | NOT NULL   |   CHAR[20]    |              |                                      |
--------        |            |               |              |                                      |
tipo sanguíneo  | NOT NULL   |   CHAR[3]     |              |                                      |
--------        |            |               |              |                                      |
hemocomponente  | NOT NULL   |   CHAR[20]    |              |                                      |
--------        |            |               |              |                                      |
data de validade| NOT NULL   |   NUMERIC     |              |                                      |
--------        |            |               |              |                                      |
hora de validade| NOT NULL   |   TIME        |              |                                      |
--------        |------------|---------------|--------------|--------------------------------------|

Entidade: Tipo sanguíneo
---------------------        
Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                            |
--------        |------------|---------------|--------------|--------------------------------------|
código          |  PRIMARY   |   NUMERIC     |              |                                      |
--------        |            |               |              |                                      |
nome            | NOT NULL   |   CHAR[100]   |              |                                      |
--------        |------------|---------------|--------------|--------------------------------------|

Entidade: Tipo de hemocomponente
---------------------        
Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                            |
--------        |------------|---------------|--------------|--------------------------------------|
código          |  PRIMARY   |  NUMERIC      |              |                                      |
--------        |            |               |              |                                      |
nome            | NOT NULL   |   CHAR[100]   |              |                                      |
--------        |            |               |              |                                      |
descrição       | NOT NULL   |   CHAR[256]   |              |                                      |
--------        |------------|---------------|--------------|--------------------------------------|

Entidade: Saída
---------------------        
Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                            |
--------        |------------|---------------|--------------|--------------------------------------|
nome do hospital| NOT NULL   |   CHAR[256]   |              |                                      |
--------        |            |               |              |                                      |
nome do paciente| NOT NULL   |   CHAR[256]   |              |                                      |
--------        |            |               |              |                                      |
data            | NOT NULL   |   NUMERIC     |              |                                      |
--------        |------------|---------------|--------------|--------------------------------------|

Entidade: Doador
---------------------        
Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                            |
--------        |------------|---------------|--------------|--------------------------------------|
nome            |  PRIMARY   |  CHAR[100]    |              |                                      |
--------        |            |               |              |                                      |
sexo            | NOT NULL   |  CHAR[100]    |              |                                      |
--------        |            |               |              |                                      |
tipo de sangue  | NOT NULL   |  CHAR[3]      |              |                                      |
--------        |            |               |              |                                      |  
endereço        | NOT NULL   |   NUMERIC     |              |                                      |
--------        |            |               |              |                                      |
data de nasc    | NOT NULL   |   NUMERIC     |              |                                      |
--------        |            |               |              |                                      |
telefone        | NOT NULL   |   CHAR[14]    |              |                                      |
--------        |------------|---------------|--------------|--------------------------------------|  

Entidade: Funcionario  
---------------------        
Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                            |
--------        |------------|---------------|--------------|--------------------------------------|
código          |  PRIMARY   |   NUMERIC     |              |                                      |
--------        |            |               |              |                                      |
nome            | NOT NULL   |   CHAR[100]   |              |                                      |
--------        |            |               |              |                                      |
username        | NOT NULL   |   CHAR[100]   |              |                                      |
--------        |            |               |              |                                      |
email           | NOT NULL   |   CHAR[256]   |              |                                      |
--------        |------------|---------------|--------------|--------------------------------------|

Entidade: Endereço
---------------------        
Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                            |
--------        |------------|---------------|--------------|--------------------------------------|
rua             | NOT NULL   |   CHAR[100]            |              |                                      |
--------        |            |               |              |                                      |
numero          | NOT NULL   |   NUMERIC     |              |                                      |
--------        |            |               |              |                                      |
bairro          | NOT NULL   |   CHAR[100]   |              |                                      |
--------        |            |               |              |                                      |
estado          | NOT NULL   |   CHAR[100]   |              |                                      |
--------        |            |               |              |                                      |
cidade          | NOT NULL   |   CHAR[100]   |              |                                      |
--------        |            |               |              |                                      |
cep             | NOT NULL   |   NUMERIC     |              |                                      |
--------        |------------|---------------|--------------|--------------------------------------|

Referências
-----------
