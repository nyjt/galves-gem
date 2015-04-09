module Galves
  class Base

    attr_reader :errors

    def initialize
      ###
      ###
      ###
      Galves.api_key = 'WEoMV2hxV93h2eL8o7msu7cT5R9604Qs'
      ###
      ###
      ###
      raise ConfigError, "Galves api key must be defined" if Galves.api_key.to_s.empty?
    end

    def make_request(method, path, options = {})
      p request_url(path)
      p request_options(options, method)
      request = ::Excon.new(request_url(path), request_options(options, method))

      response = request.public_send method
      parsed_response = JSON.parse response.body

      if response.status == 200
        parsed_response
      else
        @errors = parsed_response
        nil
      end
    end

    def request_options(options, method)
      # request_format_headers = { 'Accept' => 'application/json' }

      # unless method == :get
      #   request_format_headers.merge!({ 'Content-Type' => 'application/json' })
      # end
      {
       # :retry_limit => 0, :expects => [200, 422],
       :query => (options[:params] || {} ).merge(:apiKey => Galves.api_key)
      }
    end

    def request_url(path)
      URI.parse(Galves.host).merge(path).to_s
    end

  end

  class ConfigError < StandardError
  end
end