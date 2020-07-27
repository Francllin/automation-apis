module Modelo
  class Api
    def gerar(url_status, verbo, body=nil)
      url = URI("#{URL}#{url_status}")
      http = Net::HTTP.new(url.host, url.port);
      request =  case verbo
              when 'get' then Net::HTTP::Get.new(url)
              when 'post' then Net::HTTP::Post.new(url)
              when 'delete' then Net::HTTP::Delete.new(url)
              else
                raise 'Não possui esse verbo'
              end
      request["Content-type"] = buscar_massa('content_type')
      request.body = body unless body.nil?

      response = http.request(request)
      response
    end
  end
end