module ::LeagueOfLegends
  module DTO
    class Roster

      def self.version
        ::LeagueOfLegends::DTO::Team.version
      end

      attr_reader :owner_id, :member_list

      def initialize attributes
        return if attributes.nil?

        @owner_id = attributes[:ownerId]
        @member_list = attributes[:memberList].map do |member|
          ::LeagueOfLegends::DTO::TeamMemberInfo.new(member)
        end
      end

    end
  end
end
