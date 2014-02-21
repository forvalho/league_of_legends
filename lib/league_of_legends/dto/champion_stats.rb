require 'league_of_legends/dto'

module ::LeagueOfLegends
  module DTO
    class ChampionStats

      def self.version
        ::LeagueOfLegends::DTO::RankedStats.version
      end

      attr_reader :id, :name, :stats

      def initialize attributes
        return if attributes.nil?

        @id = attributes[:id].to_i
        @name = attributes[:name]
        @stats = ::LeagueOfLegends::DTO::AggregatedStats.new(attributes[:stats])
      end

    end
  end
end
