require 'league_of_legends/dto'

module ::LeagueOfLegends
  module Request
    module Stats
      module BySummoner
        class Summary < ::LeagueOfLegends::Request::Base

          attr_reader :summoner_id

          def initialize api, summoner_id, options = {}
            super(api, options)
            @summoner_id = summoner_id
          end

          def self.dto_class
            ::LeagueOfLegends::DTO::PlayerStatsSummaryList
          end

          protected

          def base_url
            super << "stats/by-summoner/#{summoner_id}/summary"
          end

        end
      end
    end
  end
end