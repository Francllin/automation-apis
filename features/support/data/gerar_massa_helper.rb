def gerar_primeiro_nome
  Faker::Name.first_name
end

def gerar_numero(numero)
  Faker::Number.number(digits: numero)
end