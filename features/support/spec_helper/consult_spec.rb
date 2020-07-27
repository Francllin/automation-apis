def consult_user(id)
  Modelo::Api.new.gerar("employee/#{id}", 'get')
end