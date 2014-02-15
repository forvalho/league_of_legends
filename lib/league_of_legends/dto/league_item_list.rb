require 'league_of_legends/dto'

module ::LeagueOfLegends
  module DTO
    class LeagueItemList < ::LeagueOfLegends::DTO::Base

      def self.version
        ::LeagueOfLegends::DTO::League.version
      end

      attr_reader :list

      def initialize json
        attributes = build_attributes json

        @list = attributes.map do |item|
          ::LeagueOfLegends::DTO::LeagueItem.new(item)
        end
      end

    end
  end
end