// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Deixar uma variavel constante fora de escopo dos contratos
//permite ela ser acessivel a todos os contratos.
struct Projeto {
  mapping(address => uint128) projetoDoacoes;
  uint16 projetoID;
  address responsavel;
  uint128 saldo;
  address[] doadores;
  uint128[] valores;
  uint128 meta;
}

  //Usado para restringir os momentos de doacao e saque.
  enum statusProjeto { Aberto, Finalizado, Sacado }


contract Doacao {

  uint16 projetosNumero;
  mapping(uint16 => Projeto) projetos;
  Projeto[] projetosLista;

  struct ONG {
    address owner;
    string ongNome;
    uint128 ongSaldo;
    uint16 ongID;
  }
  uint16 ongsNumero;
  ONG[] ongsLista;
  mapping(uint16 => Projeto[]) projetosONG;
  mapping(uint16 => ONG) ongs;

  //Adicionado enquanto codava:
  mapping(address => ONG) donosONG;
  mapping(address => Projeto[]) donosProjeto; 

  uint128 doacaoTotalDApp;
  mapping(string => uint128) listaDoacoes;
  //A ser implementado. Conecta-se com a funcao verDoacoes(address)
  //mapping(address, mapping(string=>uint128)[]) doacoes;
  

  //Funcoes que alteram o estado

  function criarONG(string _ongNome) {
    ONG storage o = donosONG[msg.sender];
    o.owner = msg.sender;
    o.ongNome = _ongNome;
    o.ongID = ongsNumero;
    o.ongSaldo = 0;
    ongsNumero++;
   }
  
  function criarProjeto(string _projetoNome, uint128 _meta){
    //There are two approaches in here: We can either check if the current
    //address calling the function is owner of an account or we can already
    //associate the current address to the mapping(address => ONG) and mapping(address => Projeto) 
    
    //Throw revert automatically if caller hasn't an ONG
    ONG storage o = donosONG[msg.sender];


    Projeto storage p = projetos[projetosNumero];
    projetosNumero++;    
    p.responsavel = msg.sender;
    p.meta = _meta;
    p.projetoID = projetosNumero;
   }
  


  function mudarResponsavel(address _novoResponsavel){}
  
  function sacarSaldo(uint16 _projetoID){}
  
  function finalizarProjeto(){}

  function fazerDoacao(uint16 _projetoID){}

  //Funcoes de Leitura

  function verONGs(){}

  function verProjetos(uint16 _ongID){}

  function verDoadores(uint16 _projetoID){}

  function verValores(uint16 _projetoID){}

  function verSomaSaldosONG(uint16 _ongID){}

  function verSaldo(uint16 _projetoID){}

  function verDoacaoTotalDApp(){}

  function verDoacoes(address _doador){}

}