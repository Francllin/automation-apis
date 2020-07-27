Quando('efetuar o cadastro do novo usuário') do
  @body = JSON.parse(buscar_massa('create_user body'))
  @body['name'] = gerar_primeiro_nome
  @body['salary'] = gerar_numero(4).to_s
  @body['age'] = gerar_numero(2).to_s
  @response = create(@body.to_s.gsub('=>', ':'))
end

Então('validar o cadastro realizado com sucesso') do
  # retorno do body
  response_body_consult = JSON.parse(@response.body)
  aggregate_failures do
    expect(@response.code).to eql buscar_massa('code ok')
    expect(response_body_consult['data']['name']).to eql @body['name']
    expect(response_body_consult['data']['salary']).to eql @body['salary']
    expect(response_body_consult['data']['age']).to eql @body['age']
  end
  # retorno da consulta
  @response_consult_user = consult_user(response_body_consult['data']['id'].to_i)
  response_body = JSON.parse(@response_consult_user.body)
  aggregate_failures do
    expect(@response.code).to eql buscar_massa('code ok')
    expect(response_body['data']['employee_name']).to eql @body['name']
    expect(response_body['data']['employee_salary']).to eql @body['salary']
    expect(response_body['data']['employee_age']).to eql @body['age']
    expect(response_body['data']['employee_age']).to eql response_body_consult['data']['id']
  end
end
