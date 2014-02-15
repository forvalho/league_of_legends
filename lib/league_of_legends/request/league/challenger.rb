require 'league_of_legends/dto'

module ::LeagueOfLegends
  module Request
    module League
      class Challenger < ::LeagueOfLegends::Request::Base

        attr_reader :type

        def initialize api, type, options = {}
          super(api, options)
            @type = type
        end

        def self.dto_class
          ::LeagueOfLegends::DTO::League
        end

        protected

        def base_url
          super << "league/challenger"
        end

        def url_parameters
            super << "type=#{type}"
        end

      end
    end
  end
end