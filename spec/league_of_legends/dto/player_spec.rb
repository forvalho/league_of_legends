require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::Player do

  let(:json) { { :summonerId => 46493314, :teamId => 100, :championId => 7 } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.champion_id).to eq 7
    expect(dto.summoner_id).to eq 46493314
    expect(dto.team_id).to eq 100
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.3'
  end

end