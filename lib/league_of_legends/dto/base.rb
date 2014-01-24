require 'json'        

module ::LeagueOfLegends
  module DTO
    class Base

      protected

      def build_attributes json
        JSON.parse(json, symbolize_names: true)
      end

    end
  end
end