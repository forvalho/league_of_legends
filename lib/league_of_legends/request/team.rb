require 'league_of_legends/dto'

module ::LeagueOfLegends
  module Request
    class Team < ::LeagueOfLegends::Request::Base

      attr_reader :team_ids

      def initialize api, team_ids, options = {}
        super(api, options)

        @team_ids = if team_ids.is_a? String
          team_ids.split(",")
        elsif team_ids.is_a? Array
          team_ids
        end
      end

      def self.dto_class
        ::LeagueOfLegends::DTO::TeamMap
      end

      protected

      def base_url
        super << "team/#{team_ids.join(',')}"
      end

    end
  end
end
