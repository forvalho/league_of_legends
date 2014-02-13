require 'league_of_legends/dto/base'
require 'league_of_legends/dto/game'

module ::LeagueOfLegends
  module DTO
    class RecentGames < ::LeagueOfLegends::DTO::Base

      def self.version
        'v1.3'
      end

      attr_reader :games, :summoner_id

      def initialize json
        attributes = build_attributes json

        @games = attributes[:games].map do |game|
          ::LeagueOfLegends::DTO::Game.new(game)
        end
        @summoner_id = attributes[:summonerId]
      end

    end
  end
end