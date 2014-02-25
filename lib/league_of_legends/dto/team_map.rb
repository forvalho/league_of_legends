require 'league_of_legends/dto'

module ::LeagueOfLegends
  module DTO
    class TeamMap < ::LeagueOfLegends::DTO::Base

      def self.version
        ::LeagueOfLegends::DTO::Team.version
      end

      attr_reader :teams

      def initialize json
        attributes = build_attributes json

        @teams = attributes.each_with_object({}) do |(team_id, team_dto), map|
          map[team_id.to_s] = ::LeagueOfLegends::DTO::Team.new(team_dto)
        end
      end

    end
  end
end
