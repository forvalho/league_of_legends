module ::LeagueOfLegends
  module DTO
    class Champion

      def self.version
        ::LeagueOfLegends::DTO::ChampionList.version
      end

      attr_reader :active, :attack_rank, :bot_enabled,
        :bot_mm_enabled, :defense_rank, :difficulty_rank,
        :free_to_play, :id, :magic_rank, :name,
        :ranked_play_enabled

      def initialize attributes
        return if attributes.nil?

        @active = attributes[:active]
        @attack_rank = attributes[:attackRank]
        @bot_enabled = attributes[:botEnabled]
        @bot_mm_enabled = attributes[:botMmEnabled]
        @defense_rank = attributes[:defenseRank]
        @difficulty_rank = attributes[:difficultyRank]
        @free_to_play = attributes[:freeToPlay]
        @id = attributes[:id]
        @magic_rank = attributes[:magicRank]
        @name = attributes[:name]
        @ranked_play_enabled = attributes[:rankedPlayEnabled]
      end

    end
  end
end
