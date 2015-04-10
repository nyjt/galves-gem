require 'uri'
require 'excon'
require 'json'
require 'forwardable'

require 'galves/version'
require 'galves/base'
# require all another files in /galves/resources
Dir[File.dirname(__FILE__) + '/galves/resources/*.rb'].each {|file| require file.split(/\.rb$/).first }

module Galves

  class << self
    extend Forwardable
    attr_accessor :api_key, :host, :api
    def_delegators :api, :years, :makes, :makes_by_year, :years_by_make, :models, :styles, :vehicle, :vin, :mileage,
                   :history_years, :history_makes, :history_makes_by_year, :history_years_by_make, :history_models, :history_styles

    def api
      Galves::Resources::Api.new
    end

  end

  self.host = 'http://api.galves.com'

end
