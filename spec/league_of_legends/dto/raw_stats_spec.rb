require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::RawStats do

  let(:json) { '' }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    pending "need JSON result"

    expect(dto.assists).to eq 
    expect(dto.barracks_killed).to eq 
    expect(dto.champions_killed).to eq 
    expect(dto.combat_player_score).to eq 
    expect(dto.consumables_purchased).to eq 
    expect(dto.damage_dealt_player).to eq 
    expect(dto.double_kills).to eq 
    expect(dto.first_blood).to eq 
    expect(dto.gold).to eq 
    expect(dto.gold_earned).to eq 
    expect(dto.gold_spent).to eq 
    expect(dto.item_0).to eq 
    expect(dto.item_1).to eq 
    expect(dto.item_2).to eq 
    expect(dto.item_3).to eq 
    expect(dto.item_4).to eq 
    expect(dto.item_5).to eq 
    expect(dto.item_6).to eq 
    expect(dto.items_purchased).to eq 
    expect(dto.killing_sprees).to eq 
    expect(dto.largest_critical_strike).to eq 
    expect(dto.largest_killing_spree).to eq 
    expect(dto.largest_multi_kill).to eq 
    expect(dto.legendary_items_created).to eq 
    expect(dto.level).to eq 
    expect(dto.magic_damage_dealt_player).to eq 
    expect(dto.magic_damage_dealt_to_champions).to eq 
    expect(dto.magic_damage_taken).to eq 
    expect(dto.minions_denied).to eq 
    expect(dto.minions_killed).to eq 
    expect(dto.neutral_minions_killed).to eq 
    expect(dto.neutral_minions_killed_enemy_jungle).to eq 
    expect(dto.neutral_minions_killed_your_jungle).to eq 
    expect(dto.nexus_killed).to eq 
    expect(dto.node_capture).to eq 
    expect(dto.node_capture_assist).to eq 
    expect(dto.node_neutralize).to eq 
    expect(dto.node_neutralize_assist).to eq 
    expect(dto.num_deaths).to eq 
    expect(dto.num_items_bought).to eq 
    expect(dto.objective_player_score).to eq 
    expect(dto.penta_kills).to eq 
    expect(dto.physical_damage_dealt_player).to eq 
    expect(dto.physical_damage_dealt_to_champions).to eq 
    expect(dto.physical_damage_taken).to eq 
    expect(dto.quadra_kills).to eq 
    expect(dto.sight_wards_bought).to eq 
    expect(dto.spell_1_cast).to eq 
    expect(dto.spell_2_cast).to eq 
    expect(dto.spell_3_cast).to eq 
    expect(dto.spell_4_cast).to eq 
    expect(dto.summon_spell_1_cast).to eq 
    expect(dto.summon_spell_2_cast).to eq 
    expect(dto.super_monster_killed).to eq 
    expect(dto.team).to eq 
    expect(dto.team_objective).to eq 
    expect(dto.time_played).to eq 
    expect(dto.total_damage_dealt).to eq 
    expect(dto.total_damage_dealt_to_champions).to eq 
    expect(dto.total_damage_taken).to eq 
    expect(dto.total_heal).to eq 
    expect(dto.total_player_score).to eq 
    expect(dto.total_score_rank).to eq 
    expect(dto.total_time_crowd_control_dealt).to eq 
    expect(dto.total_units_healed).to eq 
    expect(dto.triple_kills).to eq 
    expect(dto.true_damage_dealt_player).to eq 
    expect(dto.true_damage_dealt_to_champions).to eq 
    expect(dto.true_damage_taken).to eq 
    expect(dto.turrets_killed).to eq 
    expect(dto.unreal_kills).to eq 
    expect(dto.victory_point_total).to eq 
    expect(dto.vision_wards_bought).to eq 
    expect(dto.ward_killed).to eq 
    expect(dto.ward_placed).to eq 
    expect(dto.win).to eq 
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.3'
  end

end