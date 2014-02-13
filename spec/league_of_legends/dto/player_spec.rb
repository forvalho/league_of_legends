require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::Player do

  let(:json) { '' }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    pending "need JSON result"
    expect(dto.champion_id).to eq 
    expect(dto.summoner_id).to eq 
    expect(dto.team_id).to eq 
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.3'
  end

end