require 'league_of_legends/dto'

module ::LeagueOfLegends
  module DTO
    class MiniSeries

      def self.version
        ::LeagueOfLegends::DTO::League.version
      end

      attr_reader :losses, :progress, :target, :time_left_to_play_millis, :wins

      def initialize attributes
        return if attributes.nil?

        @losses = attributes[:losses]
        @progress = attributes[:progress]
        @target = attributes[:target]
        @time_left_to_play_millis = attributes[:timeLeftToPlayMillis]
        @wins = attributes[:wins]
      end

    end
  end
end
