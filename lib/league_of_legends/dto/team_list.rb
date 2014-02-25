require 'league_of_legends/dto'

module ::LeagueOfLegends
  module DTO
    class TeamList < ::LeagueOfLegends::DTO::Base

      def self.version
        ::LeagueOfLegends::DTO::Team.version
      end

      attr_reader :teams

      def initialize json
        attributes = build_attributes json

        @teams = attributes.each do |team|
          ::LeagueOfLegends::DTO::Team.new(team)
        end
      end

    end
  end
end
