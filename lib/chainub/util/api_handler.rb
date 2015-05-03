module Util
  class ApiHandler
    def self.get_api(api_url, params)
      begin
        uri = URI.parse(api_url)
        uri.query = URI.encode_www_form(params)
        ret = Net::HTTP.get_response(uri)
        # http レスポンスそのまま返すのではなく、なんらか抽象化した方がよいかも
        return ret
      rescue Timeout::Error => e
        raise e 
      end
    end

    def self.post_api(api_url, params)
      begin
        uri = URI.parse(api_url)
        http = Net::HTTP.new(uri.host, uri.port)
        if api_url.include?('https')
          http.use_ssl = true
          http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        end
        request = Net::HTTP::Post.new(api_url)
        request.set_content_type("multipart/form-data")
        request.set_form_data(params)
        ret = http.request(request)
        # http レスポンスそのまま返すのではなく、なんらか抽象化した方がよいかも
        return ret
      rescue Timeout::Error => e
        raise e
      end
    end
  end
end
