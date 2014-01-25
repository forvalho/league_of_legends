require 'league_of_legends/dto/aggregated_stats'

module ::LeagueOfLegends
  module DTO
    class PlayerStatsSummary

      def self.version
        ::LeagueOfLegends::DTO::PlayerStatsSummaryList.version
      end

      attr_reader :player_stat_summary_type, :wins,
        :losses, :modify_date, :aggregated_stats

      def initialize attributes
        @player_stat_summary_type = attributes[:playerStatSummaryType]
        @wins = attributes[:wins].to_i
        @losses = attributes[:losses].to_i
        @modify_date = Time.at(attributes[:modifyDate]/1000)
        @aggregated_stats = ::LeagueOfLegends::DTO::AggregatedStats.new(attributes[:aggregatedStats])
      end

    end
  end
end