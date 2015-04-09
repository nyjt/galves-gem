module Galves
  module Resources
    class Api < Base

      def years
        make_request :get, "/years"
      end

    end
  end
end