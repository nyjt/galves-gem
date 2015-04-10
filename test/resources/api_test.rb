require 'test_helper'

class ApiTest < ActiveSupport::TestCase

  setup do
    @api = Galves::Resources::Api.new
  end

  test 'Fetch years' do
    VCR.use_cassette('years') do
      assert_kind_of Array, @api.years
    end
  end

  test 'Fetch makes' do
    VCR.use_cassette('makes') do
      assert_kind_of Array, @api.makes
    end
  end

  test 'Fetch makes by year' do
    VCR.use_cassette('makes_by_years') do
      assert_kind_of Array, @api.makes_by_year(2010)
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.makes_by_year(1)
      assert_equal 'No data available for the Vehicle.', @api.makes_by_year(1)
    end
  end

  test 'Fetch years for specific make' do
    VCR.use_cassette('years_by_make') do
      assert_kind_of Array, @api.years_by_make('Honda')
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.years_by_make('AnyNonCar')
      assert_equal 'No data available for the Vehicle.', @api.years_by_make('AnyNonCar')
    end
  end

  test 'Fetch available models' do
    VCR.use_cassette('models') do
      assert_kind_of Array, @api.models(2010, 'Honda')
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.models(1, 'AnyNonCar')
      assert_equal 'No data available for the Vehicle.', @api.models(1, 'AnyNonCar')
    end
  end

  test 'Fetch available styles' do
    VCR.use_cassette('styles') do
      assert_kind_of Array, @api.styles(2010, 'Honda')
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.styles(1, 'AnyNonCar')
      assert_equal 'No data available for the Vehicle.', @api.styles(1, 'AnyNonCar')
    end
  end

  test 'Fetch specific vehicle' do
    VCR.use_cassette('vehicle') do
      assert_kind_of Hash, @api.vehicle(305562)
      assert_kind_of Hash, @api.vehicle(305562, '4m2eu38ex8')
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.vehicle(000000, 'AnyNonCar')
      assert_equal 'No data available for the Vehicle.', @api.vehicle(000000, 'AnyNonCar')
    end
  end

  test 'Fetch VIN' do
    VCR.use_cassette('vin') do
      assert_kind_of Array, @api.vin('3GNFK123X9')
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.vin(000000)
      assert_equal 'No data available for the Vehicle.', @api.vin(000000)
    end
  end

  test 'Fetch mileage' do
    VCR.use_cassette('mileage') do
      assert_kind_of Hash, @api.mileage(305562, '1000')
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.mileage(000000, '1000')
    end
  end

  test 'Fetch historical years' do
    VCR.use_cassette('history_years') do
      assert_kind_of Array, @api.history_years
    end
  end

  test 'Fetch historical makes' do
    VCR.use_cassette('history_makes') do
      assert_kind_of Array, @api.history_makes
    end
  end

  test 'Fetch historical makes by year' do
    VCR.use_cassette('history_makes_by_year') do
      assert_kind_of Array, @api.history_makes_by_year(2010)
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.history_makes_by_year(1)
      assert_equal 'No data available for the Vehicle.', @api.history_makes_by_year(1)
    end
  end

  ### FAILED because end point doesn't working! ###
  # test 'Fetch historical years for specific make' do
  #   VCR.use_cassette('history_years_by_make') do
  #     assert_kind_of Array, @api.history_years_by_make('Honda')
  #   end
  #   VCR.use_cassette('failed') do
  #     assert_kind_of String, @api.history_years_by_make('AnyNonCar')
  #     assert_equal 'No data available for the Vehicle.', @api.history_years_by_make('AnyNonCar')
  #   end
  # end

  test 'Fetch historical available models' do
    VCR.use_cassette('history_models') do
      assert_kind_of Array, @api.history_models(2010, 'Honda')
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.history_models(1, 'AnyNonCar')
      assert_equal 'No data available for the Vehicle.', @api.history_models(1, 'AnyNonCar')
    end
  end

  test 'Fetch historical available styles' do
    VCR.use_cassette('history_styles') do
      assert_kind_of Array, @api.history_styles(2010, 'Honda')
    end
    VCR.use_cassette('failed') do
      assert_kind_of String, @api.history_styles(1, 'AnyNonCar')
      assert_equal 'No data available for the Vehicle.', @api.history_styles(1, 'AnyNonCar')
    end
  end

end