module ::LeagueOfLegends
  module DTO
    class Team < ::LeagueOfLegends::DTO::Base

      def self.version
        'v2.2'
      end

      attr_reader :create_date, :full_id, :last_game_date, :last_join_date, :last_joined_ranked_team_queue_date, :match_history, :message_of_day, :modify_date, :name, :roster, :second_last_join_date, :status, :tag, :team_stat_summary, :third_last_join_date

      def initialize attributes
        return if attributes.nil?

        @create_date = Time.at(attributes[:createDate]/1000)
        @full_id = attributes[:fullId]
        @last_game_date = Time.at(attributes[:lastGameDate]/1000)
        @last_join_date = Time.at(attributes[:lastJoinDate]/1000)
        @last_joined_ranked_team_queue_date = Time.at(attributes[:lastJoinedRankedTeamQueueDate]/1000)
        @match_history = attributes[:matchHistory].map do |match|
          ::LeagueOfLegends::DTO::MatchHistorySummary.new(match)
        end
        @message_of_day = ::LeagueOfLegends::DTO::MessageOfDay.new(attributes[:messageOfDay])
        @modify_date = Time.at(attributes[:modifyDate]/1000)
        @name = attributes[:name]
        @roster = ::LeagueOfLegends::DTO::Roster.new(attributes[:roster])
        @second_last_join_date = Time.at(attributes[:secondLastJoinDate]/1000)
        @status = attributes[:status]
        @tag = attributes[:tag]
        @team_stat_summary = ::LeagueOfLegends::DTO::TeamStatSummary.new(attributes[:teamStatSummary])
        @third_last_join_date = Time.at(attributes[:thirdLastJoinDate]/1000)
      end

    end
  end
end
