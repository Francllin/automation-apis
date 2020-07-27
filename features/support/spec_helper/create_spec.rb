def create(body)
  Modelo::Api.new.gerar('create', 'post', body)
end