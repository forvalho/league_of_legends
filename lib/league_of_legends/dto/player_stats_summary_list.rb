require 'league_of_legends/dto/base'
require 'league_of_legends/dto/player_stats_summary'

module ::LeagueOfLegends
  module DTO
    class PlayerStatsSummaryList < ::LeagueOfLegends::DTO::Base

      def self.version
        'v1.2'
      end

      attr_reader :summoner_id, :player_stat_summaries

      def initialize json
        attributes = build_attributes json

        @summoner_id = attributes[:summonerId].to_i
        @player_stat_summaries = attributes[:playerStatSummaries].to_a.map do |pss|
          ::LeagueOfLegends::DTO::PlayerStatsSummary.new(pss)
        end
      end

    end
  end
end