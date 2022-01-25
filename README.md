# godonation-contracts


## Proposito

<p>Com o intuito de tornar o processo de ONGs receberem doacoes e de doadores fazerem doacoes a ONGs mais seguro, acessivel, descentralizado, facil e rapido, a GoBlockchain torna publica uma solucao que usa da tecnologia do Blockchain a fim de alcancar o intuito descrito.</p>

#### Funcionalidades

<p>Nesta secao, estao descritas todas as funcionalidades possiveis ao usuario, tanto o usuario que sera apenas um doador, tanto o usuario que sera apenas uma ONG, e tambem para um usuario que sera ambos. De forma visual, as funcionalidade estao descritas no diagrama UML.</p>

##### Diagrama UML

Anexar Diagrama UML

##### Descricao do UML:

##### Contrato Doacao:

<p>Responsabilidade: Responsavel por definir as principais funcoes de interacao do usuario com o DApp de doacoes para as ONGs, assim como permite um usuario de criar suas propria ONG e criar projetos atrelada a mesma a fim de receber doacoes.</p>

##### Funcoes:

`criarONG(string _ongNome)`: cria uma struct ONG com o ongNome igual a string passada como argumento.

`criarProjeto(string _projetoNome, uint128 _meta)`: cria uma struct de um projeto, com seu respectivo nome e meta de doacoes a ser alcancada.

`mudarResponsavel(address _novoResponsavel)`: delega outro endereco na rede blockchain para ser o responsavel pelos saques dos fundos doados aos projetos da ONG.

`sacarSaldo(uint16 _projetoID)`: permite apenas ao responsavel pela ONG sacar o saldo armazenado dentro de um projeto a partir das doacoes realizadas pelos doadores.

`finalizarProjeto()`: finaliza a oportunidade de o projeto continuar recebendo doacoes. A funcao sacarSaldo() deve ser usada a fim de o saldo de doacoes ser sacado mesmo depois de o projeto haver sido finalizado.

`fazerDoacao(uint16 _projetoID)`: Usuario escolhe um projeto por meio do seu ID e realiza a doacao por meio do msg.value

##### Funcoes de Leitura:

Estas funcoes abaixo apenas fazem a requisicao de dados contidos na blockchain a fim de usuario ter um registro do que realmente esta' acontecendo na aplicacao.















