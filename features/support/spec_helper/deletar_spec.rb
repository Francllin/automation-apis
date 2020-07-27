def deletar_usuario(id)
  Modelo::Api.new.gerar("delete/#{id}", 'delete')
end