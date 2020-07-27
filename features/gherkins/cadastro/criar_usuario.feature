# encoding: utf-8
# language:pt

@api
@cadastro
Funcionalidade: Cadastro - validar cadastro de um usuário
  Como futuro cliente
  Quero poder cadastrar um novo usuário
  De modo que possa usufruir do acesso na plataforma

  @#francllin_rios
  @%cadastro_sucesso
  @ciar_novo_cadastro
  Cenário: Validar cadastro de um novo clientes
    Quando efetuar o cadastro do novo usuário
    Então validar o cadastro realizado com sucesso
