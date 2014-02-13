require 'league_of_legends/dto/base'
require 'league_of_legends/dto/champion_stats'

module ::LeagueOfLegends
  module DTO
    class RankedStats < ::LeagueOfLegends::DTO::Base

      def self.version
        'v1.2'
      end

      attr_reader :summoner_id, :modify_date, :champions

      def initialize json
        attributes = build_attributes json

        @summoner_id = attributes[:summonerId].to_i
        @modify_date = Time.at(attributes[:modifyDate]/1000)
        @champions = attributes[:champions].map do |champion|
          ::LeagueOfLegends::DTO::ChampionStats.new(champion)
        end
      end

    end
  end
end