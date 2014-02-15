require 'league_of_legends/dto'

module ::LeagueOfLegends
  module DTO
    class ChampionList < ::LeagueOfLegends::DTO::Base

      def self.version
        'v1.1'
      end

      attr_reader :champions

      def initialize json
        attributes = build_attributes json
        @champions = attributes[:champions].map do |champion|
          ::LeagueOfLegends::DTO::Champion.new(champion)
        end
      end

    end
  end
end