module ::LeagueOfLegends
  module DTO
    class Player

      def self.version
        ::LeagueOfLegends::DTO::RecentGames.version
      end

      attr_reader :champion_id, :summoner_id, :team_id

      def initialize attributes
        @champion_id = attributes[:championId].to_i
        @summoner_id = attributes[:summonerId].to_i
        @team_id = attributes[:teamId].to_i
      end

    end
  end
end