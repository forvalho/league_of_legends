require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::Game do

  let(:json) { '' }
  let(:dto) { described_class.new(json) }

  it "has attributes" do
    pending "need JSON result"
    expect(dto.champion_id).to eq 
    expect(dto.create_date).to eq Time.at(1/1000)

    expect(dto.fellow_players).to be_an_instance_of Array
    expect(dto.fellow_players.size).to eq 
    dto.fellow_players.each do |player|
      expect(player).to be_an_instance_of ::LeagueOfLegends::DTO::Player
    end

    expect(dto.game_id).to eq 
    expect(dto.game_mode).to eq 
    expect(dto.game_type).to eq 
    expect(dto.invalid).to eq 
    expect(dto.level).to eq 
    expect(dto.map_id).to eq 
    expect(dto.spell_1).to eq 
    expect(dto.spell_2).to eq 
    expect(dto.stats).to be_an_instance_of ::LeagueOfLegends::DTO::RawStats
    expect(dto.sub_type).to eq 
    expect(dto.team_id).to eq 
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.3'
  end

end