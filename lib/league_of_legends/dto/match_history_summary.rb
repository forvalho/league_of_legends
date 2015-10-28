module ::LeagueOfLegends
  module DTO
    class MatchHistorySummary
      def self.version
        ::LeagueOfLegends::DTO::Team.version
      end

      attr_reader :assists, :date, :deaths, :game_id, :game_mode, :invalid,
      :kills, :map_id, :opposing_team_kills, :opposing_team_name, :win

      def initialize(attributes)
        return if attributes.nil?

        @assists = attributes[:assists]
        @date = Time.at(attributes[:date]/1000)
        @deaths = attributes[:deaths]
        @game_id = attributes[:gameId]
        @game_mode = attributes[:gameMode]
        @invalid = attributes[:invalid]
        @kills = attributes[:kills]
        @map_id = attributes[:mapId]
        @opposing_team_kills = attributes[:opposingTeamKills]
        @opposing_team_name = attributes[:opposingTeamName]
        @win = attributes[:win]
      end
    end
  end
end
