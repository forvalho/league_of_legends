require 'league_of_legends/dto'

module ::LeagueOfLegends
  module DTO
    class League < ::LeagueOfLegends::DTO::Base

      def self.version
        'v2.3'
      end

      attr_reader :entries, :name, :participant_id, :queue, :tier

      def initialize json
        if json.is_a? String
          attributes = build_attributes json
        else
          attributes = json
        end

        @entries = attributes[:entries].map do |entry|
          ::LeagueOfLegends::DTO::LeagueItem.new(entry)
        end
        @name = attributes[:name]
        @participant_id = attributes[:participantId]
        @queue = attributes[:queue]
        @tier = attributes[:tier]
      end

    end
  end
end