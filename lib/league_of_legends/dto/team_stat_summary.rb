module ::LeagueOfLegends
  module DTO
    class TeamStatSummary

      def self.version
        ::LeagueOfLegends::DTO::Team.version
      end

      attr_reader :full_id, :team_stat_details

      def initialize attributes
        return if attributes.nil?

        @full_id = attributes[:fullId]
        @team_stat_details = attributes[:teamStatDetails].map do |detail|
          ::LeagueOfLegends::DTO::TeamStatDetail.new(detail)
        end
      end

    end
  end
end
