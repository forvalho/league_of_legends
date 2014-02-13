require 'league_of_legends/dto/player'
require 'league_of_legends/dto/raw_stats'

module ::LeagueOfLegends
  module DTO
    class Game

      def self.version
        ::LeagueOfLegends::DTO::RecentGames.version
      end

      attr_reader :champion_id, :create_date, :fellow_players, 
      :game_id, :game_mode, :game_type, :invalid, :level, :map_id, 
      :spell_1, :spell_2, :stats, :sub_type, :team_id

      def initialize attributes
        @champion_id = attributes[:championId].to_i
        @create_date = Time.at(attributes[:createDate]/1000)
        @fellow_players = attributes[:fellowPlayers].map do |player|
          ::LeagueOfLegends::DTO::Player.new(player)
        end
        @game_id = attributes[:gameId].to_i
        @game_mode = attributes[:gameMode]
        @game_type = attributes[:gameType]
        @invalid = attributes[:invalid]
        @level = attributes[:level].to_i
        @map_id = attributes[:mapId].to_i
        @spell_1 = attributes[:spell1].to_i
        @spell_2 = attributes[:spell2].to_i
        @stats = ::LeagueOfLegends::DTO::RawStats.new(attributes[:stats])
        @sub_type = attributes[:subType]
        @team_id = attributes[:teamId].to_i
      end

    end
  end
end