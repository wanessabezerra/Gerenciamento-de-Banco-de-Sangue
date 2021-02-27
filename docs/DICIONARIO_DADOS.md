# Dicionário de dados

Dicionário de dados centraliza informações sobre o conjunto de dados (dataset) sob análise. Seu propósito é melhorar a comunicação entre todos os envolvidos no projeto, além de ser um repositório (documento) que descreve de forma estruturada, o significado, origem, relacionamento e uso dos dados.


## Tabela: Doador

| Atributo           | Chave            | Tipo de dado  | Tamanho      | Descrição                            |
|--------------------|------------------|---------------|--------------|--------------------------------------|
| codigo             |  PRIMARY         |  NUMERIC      |       4      | Identificador incremental de doador. |
| nome               | NOT NULL         |  VARCHAR[100] |     100      | Nome do doador.                      |
| sexo               | NOT NULL         |  VARCHAR[15]  |      15      | Sexo do doador.                      |
| tipo de sangue     | NOT NULL         |  CHAR[3]      |       3      | Tipo sanguineo.                      |
| data_de_nascimento | NOT NULL         |   NUMERIC     |      10      | Data formato (00/00/0000)            |
| telefone           | NOT NULL         |   CHAR[14]    |      14      | Telefone com formato: (XX)XXXXX-XXXX |
| cod_endereco       | FOREIGN KEY      |  VARCHAR[256] |     256      | Chave para um endereço.              |

## Tabela: Telefone

| Atributo           | Chave            | Tipo de dado  | Tamanho      | Descrição                            |
|--------------------|------------------|---------------|--------------|--------------------------------------|
| cod_doador         |  PRIMARY         |  NUMERIC      |     4        | Identificador incremental do doador. |
| numero_fone        | NOT NULL         |  CHAR[14]     |     14       | Telefone com formato: (XX)XXXXX-XXXX |

## Tabela: Endereço

| Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-----------------|------------|---------------|--------------|-----------------------------------------------|
| codigo          |  PK        |   NUMERIC     |      4       |  Identificador incremental de endereço.       |
| rua             | NOT NULL   |   VARCHAR[50] |      50      |  Rua limitada a 50 caracteres.                |
| numero          | NOT NULL   |   NUMERIC     |       4      |  Numero limitada a 4 caracteres.              |
| bairro          | NOT NULL   |   VARCHAR[50] |      50      |  Bairro limitada a 50 caracteres.             |
| cidade          | NOT NULL   |   VARCHAR[50] |      50      |  Cidade limitada a 50 caracteres.             |
| estado          | NOT NULL   |   VARCHAR[50] |      50      |  Estado limitada a 50 caracteres.             |
| cep             | NOT NULL   |   NUMERIC     |      10      |  Cep limitada a 10 caracteres.                |

## Tabela: Funcionário  

| Atributo             | Chave            | Tipo de dado  | Tamanho      | Descrição                                     |
|----------------------|------------------|---------------|--------------|-----------------------------------------------|
| codigo               |  PK              |   NUMERIC     |      4       | Identificador incremental de funcionario.     |
| nome                 | NOT NULL         |   CHAR[100]   |     100      | Nome do usuario/funcionario de acesso.        |
| email                | NOT NULL         |   CHAR[256]   |     256      | Email com limite padrão de 256 caracteres.    |
| username             | NOT NULL         |   CHAR[100]   |     100      | Identificação unica.                          |
| cod_endereco         | FK               |   VARCHAR[256]|     256      | Chave para um endereço.                       |

## Tabela: Banco de Sangue

| Atributo      | Chave | Tipo de dado  | Tamanho      | Descrição                                       |
|---------------|-------|---------------|--------------|-------------------------------------------------|
| codigo        | PK    |   NUMERIC     |      4       | Identificador incremental de banco de sangue.   |
| nome          | NN    |   VARCHAR[50] |      50      | Limite de caracteres varia.                     |
| capacidade    | NN    |   NUMERIC     |      4       | Capacidade maxima do banco.                     |

## Tabela: Bolsa de Sangue

| Atributo                | Chave | Tipo de dado  | Tamanho      | Descrição                                     |
|-------------------------|-------|---------------|--------------|-----------------------------------------------|
| codigo                  | PK    |   NUMERIC     |      4       | Identificador incremental de tipo sanguineo.  |
| identificacao_da_doacao | NN    |   NUMERIC     |      4       | Identificador da doacao.                      |
| data_hora_coleta        | NN    |   NUMERIC     |     10       | Coleta de sangue.                             |
| tipo_de_doacao          | NN    |   CHAR[20]    |     20       | Se a doação é Voluntária, Autóloga.           |
| tipo_sanguineo          | NN    |   CHAR[3]     |      3       | Identificação do tipo sanguineo coletado.     |
| hemocomponente          | NN    |   CHAR[20]    |     20       | Tipo de hemocomponente presente.              |
| data_hora_de_validade   | NN    |   NUMERIC     |     10       | Data de validade do sangue coletado.          |

## Tabela: Tipo sanguíneo

| Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-----------------|------------|---------------|--------------|-----------------------------------------------|
| codigo          |  PK        |   NUMERIC     |      4       | Identificador incremental de tipo sanguíneo.  |
| nome            | NOT NULL   |   VARCHAR[50] |      50      | Nome do tipo sanguíneo.                       |

## Tabela: Tipo de hemocomponente

| Atributo        | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|-----------------|------------|---------------|--------------|-----------------------------------------------|
| codigo          |  PK        |    NUMERIC    |      4       | Identificador incremental de hemocomponente.  |
| nome            | NOT NULL   |   VARCHAR[256]|    256       | Nome do homocomponente.                       |
| descrição       | NOT NULL   |   CHAR[256]   |    256       | Descrição do homocomponente.                  |

## Tabela: Saída

| Atributo          | Chave      | Tipo de dado  | Tamanho      | Descrição                                     |
|:-----------------:|------------|---------------|--------------|-----------------------------------------------|
| codigo            |  PK        |  NUMERIC      |     4        | Identificador incremental de saída.           |
| nome_do_hospital  | NOT NULL   |  VARCHAR[256] |     256      | Local de saida.                               |
| nome_do_paciente  | NOT NULL   |  VARCHAR[256] |     256      | Nome do paciente.                             |
| data_hora_de_saida| NOT NULL   |  DATETIME     |     10       | Data de saida.                                |


### Referências

[Exemplo de Dicionário - IBM](https://publib.boulder.ibm.com/tividd/td/ITMFTP/GC23-4803-00/pt_BR/HTML/TMTPmst80.htm)

[Dicionário de Dados](https://www.luis.blog.br/dicionario-de-dados.html)
