module ::LeagueOfLegends
  module DTO
    class TeamMemberInfo

      def self.version
        ::LeagueOfLegends::DTO::Team.version
      end

      attr_reader :join_date, :invite_date, :status, :player_id

      def initialize attributes
        return if attributes.nil?

        @join_date = Time.at(attributes[:joinDate]/1000)
        @invite_date = Time.at(attributes[:inviteDate]/1000)
        @status = attributes[:status]
        @player_id = attributes[:playerId]
      end

    end
  end
end
