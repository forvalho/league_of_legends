require 'league_of_legends/request/base'
require 'league_of_legends/dto/player_stats_summary_list'

module ::LeagueOfLegends
  module Request
    module Stats
      module BySummoner
        class Summary < ::LeagueOfLegends::Request::Base

          attr_reader :summoner_id, :options

          def initialize summoner_id, options = {}
            @summoner_id = summoner_id
            @options = self.class.default_options.merge(options)
          end

          def self.dto_class
            ::LeagueOfLegends::DTO::PlayerStatsSummaryList
          end

        end
      end
    end
  end
end