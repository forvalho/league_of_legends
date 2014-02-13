require 'league_of_legends'

module ::LeagueOfLegends
  module Request
    module Game
      module BySummoner
        class Recent < ::LeagueOfLegends::Request::Base

          attr_reader :summoner_id

          def initialize api, summoner_id, options = {}
            super(api, options)
            @summoner_id = summoner_id
          end

          def self.dto_class
            ::LeagueOfLegends::DTO::RecentGames
          end

          protected

          def base_url
            super << "game/by-summoner/#{summoner_id}/recent"
          end

        end
      end
    end
  end
end