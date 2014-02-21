module ::LeagueOfLegends
  module DTO
    class MessageOfDay

      def self.version
        ::LeagueOfLegends::DTO::Team.version
      end

      attr_reader :create_date, :message, :version

      def initialize attributes
        return if attributes.nil?

        @create_date = Time.at(attributes[:createDate]/1000)
        @message = attributes[:message]
        @version = attributes[:version]
      end

    end
  end
end
