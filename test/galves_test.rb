require 'test_helper'

class GakvesTest < ActiveSupport::TestCase

  test 'it should respond to accessors and delegators' do
    # accessors
    assert_respond_to Galves, :api_key
    assert_respond_to Galves, :host
    assert_respond_to Galves, :api
    #delegators
    assert_respond_to Galves, :api
    assert_respond_to Galves, :years
    assert_respond_to Galves, :makes
    assert_respond_to Galves, :makes_by_year
    assert_respond_to Galves, :years_by_make
    assert_respond_to Galves, :models
    assert_respond_to Galves, :styles
    assert_respond_to Galves, :vehicle
    assert_respond_to Galves, :vin
    assert_respond_to Galves, :mileage
    assert_respond_to Galves, :history_years
    assert_respond_to Galves, :history_makes
    assert_respond_to Galves, :history_makes_by_year
    assert_respond_to Galves, :history_years_by_make
    assert_respond_to Galves, :history_models
    assert_respond_to Galves, :history_styles
  end

  test 'it should have API class object' do
    assert_instance_of Galves::Resources::Api, Galves.api
  end

end