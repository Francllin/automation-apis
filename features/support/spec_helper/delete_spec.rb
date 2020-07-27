def delete_user(id)
  Modelo::Api.new.gerar("delete/#{id}", 'delete')
end