require 'league_of_legends/request/base'
require 'league_of_legends/dto/champion'

module ::LeagueOfLegends
  module Request
    class Champion < ::LeagueOfLegends::Request::Base

      attr_reader :free_to_play

      def initialize api, free_to_play, options = {}
        super(api, options)
          @free_to_play = parse_f2p free_to_play
      end

      def self.dto_class
        ::LeagueOfLegends::DTO::ChampionList
      end

      protected

      def base_url
        super << "champion"
      end

      def url_parameters
        if free_to_play.nil?
          super
        else
          super << "freeToPlay=#{free_to_play}"
        end
      end

      private

      def parse_f2p f2p
        case f2p
        when TrueClass, FalseClass
          f2p.to_s
        else
          nil
        end
      end

    end
  end
end