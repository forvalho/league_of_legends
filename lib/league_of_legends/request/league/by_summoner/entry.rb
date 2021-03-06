require 'league_of_legends/dto'

module ::LeagueOfLegends
  module Request
    module League
      class BySummoner
        class Entry < ::LeagueOfLegends::Request::Base

          attr_reader :summoner_id

          def initialize api, summoner_id, options = {}
            super(api, options)
            @summoner_id = summoner_id
          end

          def self.dto_class
            ::LeagueOfLegends::DTO::LeagueItemList
          end

          protected

          def base_url
            super << "league/by-summoner/#{summoner_id}/entry"
          end

        end
      end
    end
  end
end