module ::LeagueOfLegends
  module DTO
    class RawStats

      def self.version
        ::LeagueOfLegends::DTO::RecentGames.version
      end

      attr_reader

      def initialize attributes
        @assists = attributes[:assists].to_i
        @barracks_killed = attributes[:barracksKilled].to_i
        @champions_killed = attributes[:championsKilled].to_i
        @combat_player_score = attributes[:combatPlayerScore].to_i
        @consumables_purchased = attributes[:consumablesPurchased].to_i
        @damage_dealt_player = attributes[:damageDealtPlayer].to_i
        @double_kills = attributes[:doubleKills].to_i
        @first_blood = attributes[:firstBlood].to_i
        @gold = attributes[:gold].to_i
        @gold_earned = attributes[:goldEarned].to_i
        @gold_spent = attributes[:goldSpent].to_i
        @item_0 = attributes[:item0].to_i
        @item_1 = attributes[:item1].to_i
        @item_2 = attributes[:item2].to_i
        @item_3 = attributes[:item3].to_i
        @item_4 = attributes[:item4].to_i
        @item_5 = attributes[:item5].to_i
        @item_6 = attributes[:item6].to_i
        @items_purchased = attributes[:itemsPurchased].to_i
        @killing_sprees = attributes[:killingSprees].to_i
        @largest_critical_strike = attributes[:largestCriticalStrike].to_i
        @largest_killing_spree = attributes[:largestKillingSpree].to_i
        @largest_multi_kill = attributes[:largestMultiKill].to_i
        @legendary_items_created = attributes[:legendaryItemsCreated].to_i
        @level = attributes[:level].to_i
        @magic_damage_dealt_player = attributes[:magicDamageDealtPlayer].to_i
        @magic_damage_dealt_to_champions = attributes[:magicDamageDealtToChampions].to_i
        @magic_damage_taken = attributes[:magicDamageTaken].to_i
        @minions_denied = attributes[:minionsDenied].to_i
        @minions_killed = attributes[:minionsKilled].to_i
        @neutral_minions_killed = attributes[:neutralMinionsKilled].to_i
        @neutral_minions_killed_enemy_jungle = attributes[:neutralMinionsKilledEnemyJungle].to_i
        @neutral_minions_killed_your_jungle = attributes[:neutralMinionsKilledYourJungle].to_i
        @nexus_killed = attributes[:nexusKilled]
        @node_capture = attributes[:nodeCapture].to_i
        @node_capture_assist = attributes[:nodeCaptureAssist].to_i
        @node_neutralize = attributes[:nodeNeutralize].to_i
        @node_neutralize_assist = attributes[:nodeNeutralizeAssist].to_i
        @num_deaths = attributes[:numDeaths].to_i
        @num_items_bought = attributes[:numItemsBought].to_i
        @objective_player_score = attributes[:objectivePlayerScore].to_i
        @penta_kills = attributes[:pentaKills].to_i
        @physical_damage_dealt_player = attributes[:physicalDamageDealtPlayer].to_i
        @physical_damage_dealt_to_champions = attributes[:physicalDamageDealtToChampions].to_i
        @physical_damage_taken = attributes[:physicalDamageTaken].to_i
        @quadra_kills = attributes[:quadraKills].to_i
        @sight_wards_bought = attributes[:sightWardsBought].to_i
        @spell_1_cast = attributes[:spell1Cast].to_i
        @spell_2_cast = attributes[:spell2Cast].to_i
        @spell_3_cast = attributes[:spell3Cast].to_i
        @spell_4_cast = attributes[:spell4Cast].to_i
        @summon_spell_1_cast = attributes[:summonSpell1Cast].to_i
        @summon_spell_2_cast = attributes[:summonSpell2Cast].to_i
        @super_monster_killed = attributes[:superMonsterKilled].to_i
        @team = attributes[:team].to_i
        @team_objective = attributes[:teamObjective].to_i
        @time_played = attributes[:timePlayed].to_i
        @total_damage_dealt = attributes[:totalDamageDealt].to_i
        @total_damage_dealt_to_champions = attributes[:totalDamageDealtToChampions].to_i
        @total_damage_taken = attributes[:totalDamageTaken].to_i
        @total_heal = attributes[:totalHeal].to_i
        @total_player_score = attributes[:totalPlayerScore].to_i
        @total_score_rank = attributes[:totalScoreRank].to_i
        @total_time_crowd_control_dealt = attributes[:totalTimeCrowdControlDealt].to_i
        @total_units_healed = attributes[:totalUnitsHealed].to_i
        @triple_kills = attributes[:tripleKills].to_i
        @true_damage_dealt_player = attributes[:trueDamageDealtPlayer].to_i
        @true_damage_dealt_to_champions = attributes[:trueDamageDealtToChampions].to_i
        @true_damage_taken = attributes[:trueDamageTaken].to_i
        @turrets_killed = attributes[:turretsKilled].to_i
        @unreal_kills = attributes[:unrealKills].to_i
        @victory_point_total = attributes[:victoryPointTotal].to_i
        @vision_wards_bought = attributes[:visionWardsBought].to_i
        @ward_killed = attributes[:wardKilled].to_i
        @ward_placed = attributes[:wardPlaced].to_i
        @win = attributes[:win]
      end

    end
  end
end