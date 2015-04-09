require 'uri'
require 'excon'
require 'json'

require 'galves/version'
require 'galves/base'
Dir[File.dirname(__FILE__) + '/galves/resources/*.rb'].each {|file| require file.split(/\.rb$/).first }

module Galves

  class << self
    attr_accessor :api_key, :host

    def years
      Galves::Resources::Api.years
    end

  end

  self.host = 'http://api.galves.com'

end
