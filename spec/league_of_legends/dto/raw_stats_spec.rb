require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::RawStats do

  let(:json) { {
    :level => 12,
    :goldEarned => 6372,
    :numDeaths => 6,
    :minionsKilled => 76,
    :goldSpent => 5375,
    :totalDamageDealt => 67406,
    :totalDamageTaken => 19667,
    :team => 200,
    :win => false,
    :neutralMinionsKilled => 8,
    :physicalDamageDealtPlayer => 64404,
    :magicDamageDealtPlayer => 3002,
    :physicalDamageTaken => 7819,
    :magicDamageTaken => 11789,
    :largestCriticalStrike => 327,
    :timePlayed => 1965,
    :totalHeal => 720,
    :totalUnitsHealed => 1,
    :assists => 1,
    :item0 => 1055,
    :item1 => 1051,
    :item2 => 3072,
    :item3 => 1001,
    :item4 => 3093,
    :item5 => 1042,
    :item6 => 3350,
    :magicDamageDealtToChampions => 1575,
    :physicalDamageDealtToChampions => 10703,
    :totalDamageDealtToChampions => 12278,
    :trueDamageTaken => 58,
    :wardPlaced => 4,
    :neutralMinionsKilledYourJungle => 8,
    :totalTimeCrowdControlDealt => 534
    } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    # expect(dto.assists).to eq 
    # expect(dto.barracks_killed).to eq 
    # expect(dto.champions_killed).to eq 
    # expect(dto.combat_player_score).to eq 
    # expect(dto.consumables_purchased).to eq 
    # expect(dto.damage_dealt_player).to eq 
    # expect(dto.double_kills).to eq 
    # expect(dto.first_blood).to eq 
    # expect(dto.gold).to eq 
    expect(dto.gold_earned).to eq 6372
    expect(dto.gold_spent).to eq 5375
    expect(dto.item_0).to eq 1055
    expect(dto.item_1).to eq 1051
    expect(dto.item_2).to eq 3072
    expect(dto.item_3).to eq 1001
    expect(dto.item_4).to eq 3093
    expect(dto.item_5).to eq 1042
    expect(dto.item_6).to eq 3350
    # expect(dto.items_purchased).to eq 
    # expect(dto.killing_sprees).to eq 
    expect(dto.largest_critical_strike).to eq 327
    # expect(dto.largest_killing_spree).to eq 
    # expect(dto.largest_multi_kill).to eq 
    # expect(dto.legendary_items_created).to eq 
    expect(dto.level).to eq 12
    expect(dto.magic_damage_dealt_player).to eq 3002
    expect(dto.magic_damage_dealt_to_champions).to eq 1575
    expect(dto.magic_damage_taken).to eq 11789
    # expect(dto.minions_denied).to eq 
    expect(dto.minions_killed).to eq 76
    expect(dto.neutral_minions_killed).to eq 8
    # expect(dto.neutral_minions_killed_enemy_jungle).to eq 
    expect(dto.neutral_minions_killed_your_jungle).to eq 8
    # expect(dto.nexus_killed).to eq 
    # expect(dto.node_capture).to eq 
    # expect(dto.node_capture_assist).to eq 
    # expect(dto.node_neutralize).to eq 
    # expect(dto.node_neutralize_assist).to eq 
    expect(dto.num_deaths).to eq 6
    # expect(dto.num_items_bought).to eq 
    # expect(dto.objective_player_score).to eq 
    # expect(dto.penta_kills).to eq 
    expect(dto.physical_damage_dealt_player).to eq 64404
    expect(dto.physical_damage_dealt_to_champions).to eq 10703
    expect(dto.physical_damage_taken).to eq 7819
    # expect(dto.quadra_kills).to eq 
    # expect(dto.sight_wards_bought).to eq 
    # expect(dto.spell_1_cast).to eq 
    # expect(dto.spell_2_cast).to eq 
    # expect(dto.spell_3_cast).to eq 
    # expect(dto.spell_4_cast).to eq 
    # expect(dto.summon_spell_1_cast).to eq 
    # expect(dto.summon_spell_2_cast).to eq 
    # expect(dto.super_monster_killed).to eq 
    expect(dto.team).to eq 200
    # expect(dto.team_objective).to eq 
    expect(dto.time_played).to eq 1965
    expect(dto.total_damage_dealt).to eq 67406
    expect(dto.total_damage_dealt_to_champions).to eq 12278
    expect(dto.total_damage_taken).to eq 19667
    expect(dto.total_heal).to eq 720
    # expect(dto.total_player_score).to eq 
    # expect(dto.total_score_rank).to eq 
    expect(dto.total_time_crowd_control_dealt).to eq 534
    expect(dto.total_units_healed).to eq 1
    # expect(dto.triple_kills).to eq 
    # expect(dto.true_damage_dealt_player).to eq 
    # expect(dto.true_damage_dealt_to_champions).to eq 
    expect(dto.true_damage_taken).to eq 58
    # expect(dto.turrets_killed).to eq 
    # expect(dto.unreal_kills).to eq 
    # expect(dto.victory_point_total).to eq 
    # expect(dto.vision_wards_bought).to eq 
    # expect(dto.ward_killed).to eq 
    expect(dto.ward_placed).to eq 4
    expect(dto.win).to be_false
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.3'
  end

end