#language: pt
Funcionalidade: Reivindicar conta de candidato
  Como candidato
  Eu desejo reivindicar uma conta no Voto Como Vamos
  Para que eu possa compartilhar minhas informações e propostas com os eleitores

  NARRATIVA:
  ==========

  Esta Feature implementa a reivindicação de uma conta de candidato e a submissão da ficha completa
  que contem as informações importadas do candidato tse, as informações básicas, os links de redes sociais
  e os termos de uso que da aplicação Voto Como Vamos.

  O voto como vamos deve enviar uma mensagem para os e-mails importados no voto como vamos, solicitando
  um perfil de acesso do facebook para administração do candidato, mediante a aceitação dos termos de uso.

  Fora de Escopo:
  ---------------
  * Cadastros secundários, bem como qualquer cadastro que venha após a Aprovação do candidato.

  @javascript @facebook
  Cenario: Recebendo e-mail de reivindicação de propriedade
    Dado que o Voto Como Vamos me enviou um e-mail solicitando que eu administre meu peril
    Quando acesso endereço de solicitação fornecido no e-mail
    E entro com minhas credenciais no facebook
    Então devo ir para aceitação dos termos de uso

  @javascript
  Cenario: Me tornando administrador do meu perfil de candidato
    Dado que eu estou logado na aplicação
    E que estou na página de solicitação de administração do meu perfil
    Quando aceito os termos de uso
    E confirmo a solicitação
    Então devo poder administrar o meu perfil
