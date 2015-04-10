module Galves
  class Base

    attr_reader :errors

    def initialize
      raise ConfigError, "Galves api key must be defined" if Galves.api_key.to_s.empty?
    end

    def make_request(method, path, options = {})
      request = ::Excon.new(request_url(path), request_options(options, method))

      response = request.public_send method

      response.status == 200 ? JSON.parse(response.body) : response.body
    end

    def request_options(options, method)
      {
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