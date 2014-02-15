require 'league_of_legends/dto'

module ::LeagueOfLegends
  module Request
    module Stats
      module BySummoner
        class Ranked < ::LeagueOfLegends::Request::Base

          attr_reader :summoner_id

          def initialize api, summoner_id, options = {}
            super(api, options)
            @summoner_id = summoner_id
          end

          def self.dto_class
            ::LeagueOfLegends::DTO::RankedStats
          end

          protected

          def base_url
            super << "stats/by-summoner/#{summoner_id}/ranked"
          end

        end
      end
    end
  end
end