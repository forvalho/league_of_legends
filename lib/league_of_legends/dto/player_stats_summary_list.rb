module ::LeagueOfLegends
  module DTO
    class PlayerStatsSummaryList < ::LeagueOfLegends::DTO::Base

      attr_reader :summoner_id, :player_stat_summaries

      def initialize json
        @attributes = build_attributes json
        @summoner_id = attributes[:summonerId].to_i
        @player_stat_summaries = attributes[:playerStatSummaries].map do |pss|
          ::LeagueOfLegends::DTO::PlayerStatsSummary.new(pss)
        end
      end

      private

      attr_reader :attributes

    end
  end
end