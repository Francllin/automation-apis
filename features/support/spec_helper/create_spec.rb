def create_user(body)
  Modelo::Api.new.gerar('create', 'post', body)
end