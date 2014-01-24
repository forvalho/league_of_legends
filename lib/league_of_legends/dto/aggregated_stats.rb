module ::LeagueOfLegends
  module DTO
    class AggregatedStats

      attr_reader :average_assists, :average_champions_killed, 
        :average_combat_player_score, :average_node_capture, 
        :average_node_capture_assist, :average_node_neutralize, 
        :average_node_neutralize_assist, :average_num_deaths, 
        :average_objective_player_score, :average_team_objective, 
        :average_total_player_score, :bot_games_layed, :killing_spree, 
        :max_assists, :max_champions_killed, :max_combat_player_score, 
        :max_largest_critical_strike, :max_largest_killing_spree, 
        :max_node_capture, :max_node_capture_assist, :max_node_neutralize, 
        :max_node_neutralize_assist, :max_num_deaths, 
        :max_objective_player_score, :max_team_objective, :max_time_played, 
        :max_time_spent_living, :max_total_player_score, 
        :most_champion_kills_per_session, :most_spells_cast, 
        :normal_games_played, :ranked_premade_games_played, 
        :ranked_solo_games_played, :total_assists, :total_champion_kills, 
        :total_damage_dealt, :total_damage_taken, :total_deaths_per_session, 
        :total_double_kills, :total_first_blood, :total_gold_earned, 
        :total_heal, :total_magic_damage_dealt, :total_minion_kills, 
        :total_neutral_minions_killed, :total_node_capture, 
        :total_node_neutralize, :total_penta_kills, :total_physical_damage_dealt, 
        :total_quadra_kills, :total_sessions_lost, :total_sessions_played, 
        :total_sessions_won, :total_triple_kills, :total_turrets_killed, 
        :total_unreal_kills
        
      def initialize attributes
        @average_assists = attributes[:averageAssists].to_i
        @average_champions_killed = attributes[:averageChampionsKilled].to_i
        @average_combat_player_score = attributes[:averageCombatPlayerScore].to_i
        @average_node_capture = attributes[:averageNodeCapture].to_i
        @average_node_capture_assist = attributes[:averageNodeCaptureAssist].to_i
        @average_node_neutralize = attributes[:averageNodeNeutralize].to_i
        @average_node_neutralize_assist = attributes[:averageNodeNeutralizeAssist].to_i
        @average_num_deaths = attributes[:averageNumDeaths].to_i
        @average_objective_player_score = attributes[:averageObjectivePlayerScore].to_i
        @average_team_objective = attributes[:averageTeamObjective].to_i
        @average_total_player_score = attributes[:averageTotalPlayerScore].to_i
        @bot_games_layed = attributes[:botGamesPlayed].to_i
        @killing_spree = attributes[:killingSpree].to_i
        @max_assists = attributes[:maxAssists].to_i
        @max_champions_killed = attributes[:maxChampionsKilled].to_i
        @max_combat_player_score = attributes[:maxCombatPlayerScore].to_i
        @max_largest_critical_strike = attributes[:maxLargestCriticalStrike].to_i
        @max_largest_killing_spree = attributes[:maxLargestKillingSpree].to_i
        @max_node_capture = attributes[:maxNodeCapture].to_i
        @max_node_capture_assist = attributes[:maxNodeCaptureAssist].to_i
        @max_node_neutralize = attributes[:maxNodeNeutralize].to_i
        @max_node_neutralize_assist = attributes[:maxNodeNeutralizeAssist].to_i
        @max_num_deaths = attributes[:maxNumDeaths].to_i
        @max_objective_player_score = attributes[:maxObjectivePlayerScore].to_i
        @max_team_objective = attributes[:maxTeamObjective].to_i
        @max_time_played = attributes[:maxTimePlayed].to_i
        @max_time_spent_living = attributes[:maxTimeSpentLiving].to_i
        @max_total_player_score = attributes[:maxTotalPlayerScore].to_i
        @most_champion_kills_per_session = attributes[:mostChampionKillsPerSession].to_i
        @most_spells_cast = attributes[:mostSpellsCast].to_i
        @normal_games_played = attributes[:normalGamesPlayed].to_i
        @ranked_premade_games_played = attributes[:rankedPremadeGamesPlayed].to_i
        @ranked_solo_games_played = attributes[:rankedSoloGamesPlayed].to_i
        @total_assists = attributes[:totalAssists].to_i
        @total_champion_kills = attributes[:totalChampionKills].to_i
        @total_damage_dealt = attributes[:totalDamageDealt].to_i
        @total_damage_taken = attributes[:totalDamageTaken].to_i
        @total_deaths_per_session = attributes[:totalDeathsPerSession].to_i
        @total_double_kills = attributes[:totalDoubleKills].to_i
        @total_first_blood = attributes[:totalFirstBlood].to_i
        @total_gold_earned = attributes[:totalGoldEarned].to_i
        @total_heal = attributes[:totalHeal].to_i
        @total_magic_damage_dealt = attributes[:totalMagicDamageDealt].to_i
        @total_minion_kills = attributes[:totalMinionKills].to_i
        @total_neutral_minions_killed = attributes[:totalNeutralMinionsKilled].to_i
        @total_node_capture = attributes[:totalNodeCapture].to_i
        @total_node_neutralize = attributes[:totalNodeNeutralize].to_i
        @total_penta_kills = attributes[:totalPentaKills].to_i
        @total_physical_damage_dealt = attributes[:totalPhysicalDamageDealt].to_i
        @total_quadra_kills = attributes[:totalQuadraKills].to_i
        @total_sessions_lost = attributes[:totalSessionsLost].to_i
        @total_sessions_played = attributes[:totalSessionsPlayed].to_i
        @total_sessions_won = attributes[:totalSessionsWon].to_i
        @total_triple_kills = attributes[:totalTripleKills].to_i
        @total_turrets_killed = attributes[:totalTurretsKilled].to_i
        @total_unreal_kills = attributes[:totalUnrealKills].to_i
      end

    end
  end
end