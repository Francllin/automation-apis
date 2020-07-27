# encoding: utf-8
# language:pt

@api
@deletar
Funcionalidade: Cadastro - deletar um usuario cadastrado
  Como operador do sisema
  Quero poder deletar um usuario da base
  De modo que possa liberar espaço para novos cadastros

  @#francllin_rios
  @%cadastrar_usuario @%deletar_usuario
  @deletar_usuario
  Cenário: Deletar usuário com sucesso
    Quando deletar o usuário
    Então validar que o usuário foi deletardo com sucesso
