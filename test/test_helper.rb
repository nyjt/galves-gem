require 'galves'
require 'active_support'
require 'minitest/autorun'
require 'minitest/pride'
require 'webmock'
require 'vcr'
require 'dotenv'
Dotenv.load

Galves.host    = ENV["TEST_HOST"] || "http://api.galves.com"
Galves.api_key = ENV["API_KEY"]

ActiveSupport::TestCase.test_order = :random

WebMock.disable_net_connect!(:allow_localhost => true)

VCR.configure do |config|
  config.cassette_library_dir = "test/fixtures/vcr_cassettes"
  config.default_cassette_options = { record: :new_episodes }
  config.hook_into :webmock
end