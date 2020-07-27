Quando('deletar o usuário') do
  step 'efetuar o cadastro do novo usuário'
  @response = deletar_usuario(JSON.parse(@response.body)['data']['id'])
end

Então('validar que o usuário foi deletardo com sucesso') do
  # retorno do body
  response_body_delete = JSON.parse(@response.body)
  aggregate_failures do
    expect(@response.code).to eql buscar_massa('code ok')
    expect(response_body_delete['status']).to eql 'success'
    expect(response_body_delete['message']).to eql 'successfully! deleted Records'
  end
end
