module Galves
  module Resources
    class Api < Base

      # Fetch all available years:
      def years
        make_request :get, '/years'
      end

      # Fetch all available makes:
      def makes
        make_request :get, '/makes'
      end

      # Fetch makes by year:
      def makes_by_year(year)
        make_request :get, '/makes/byYear/' + year.to_s
      end

      # Fetch years for specific make:
      def years_by_make(make)
        make_request :get, '/years/byMake/' + make.to_s
      end

      # Fetch available models:
      def models(year, model)
        make_request :get, "/models/#{year.to_s}/#{model.to_s}"
      end

      # Fetch available styles:
      def styles(year, model)
        make_request :get, "/styles/#{year}/#{model}/cr-v"
      end

      # Fetch specific vehicle:
      def vehicle(gid, vin=nil)
        make_request :get, "/vehicle/#{gid}" + (vin.nil? ? '' : "/#{vin}")
      end

      # Fetch VIN 3GNFK123X9:
      def vin(vin)
        make_request :get, '/vehicleByVIN/' + vin.to_s
      end

      # Fetch mileage:
      def mileage(id, param)
        make_request :get, "/vehicle/#{id}/mileage/#{param}"
      end

      # Fetch historical years:
      def history_years
        make_request :get, '/histyears'
      end

      # Fetch historical makes:
      def history_makes
        make_request :get, '/histmakes'
      end

      # Fetch historical makes by year:
      def history_makes_by_year(year)
        make_request :get, '/histmakes/byYear/' + year.to_s
      end

      # Fetch historical years for specific make:
      def history_years_by_make(make)
        make_request :get, '/histyears/byMake/' + make.to_s
      end

      # Fetch historical available models:
      def history_models(year, model)
        make_request :get, "/histmodels/#{year}/#{model}"
      end

      # Fetch historical available styles:
      def history_styles(year, model)
        make_request :get, "/histstyles/#{year}/#{model}/cr-v"
      end

    end
  end
end