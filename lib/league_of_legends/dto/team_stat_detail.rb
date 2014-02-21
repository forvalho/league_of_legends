module ::LeagueOfLegends
  module DTO
    class TeamStatDetail

      def self.version
        ::LeagueOfLegends::DTO::Team.version
      end

      attr_reader :average_games_played, :full_id, :losses, :team_stat_type, :wins

      def initialize attributes
        return if attributes.nil?

        @average_games_played = attributes[:averageGamesPlayed]
        @full_id = attributes[:fullId]
        @losses = attributes[:losses]
        @team_stat_type = attributes[:teamStatType]
        @wins = attributes[:wins]
      end

    end
  end
end
