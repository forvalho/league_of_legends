require 'league_of_legends/dto'

module ::LeagueOfLegends
  module DTO
    class LeagueItem

      def self.version
        ::LeagueOfLegends::DTO::League.version
      end

      attr_reader :is_fresh_blood, :is_hot_streak, :is_inactive, :is_veteran, :last_played, :league_name, :league_points, :mini_series, :player_or_team_id, :player_or_team_name, :queue_type, :rank, :tier, :wins

      def initialize attributes
        return if attributes.nil?

        @is_fresh_blood = attributes[:isFreshBlood]
        @is_hot_streak = attributes[:isHotStreak]
        @is_inactive = attributes[:isInactive]
        @is_veteran = attributes[:isVeteran]
        @last_played = attributes[:lastPlayed]
        @league_name = attributes[:leagueName]
        @league_points = attributes[:leaguePoints]
        @mini_series = ::LeagueOfLegends::DTO::MiniSeries.new(attributes[:miniSeries]) if attributes[:miniSeries]
        @player_or_team_id = attributes[:playerOrTeamId]
        @player_or_team_name = attributes[:playerOrTeamName]
        @queue_type = attributes[:queueType]
        @rank = attributes[:rank]
        @tier = attributes[:tier]
        @wins = attributes[:wins]
      end

    end
  end
end
