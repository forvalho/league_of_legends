require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::TeamStatDetail do

  let(:json) { {
     averageGamesPlayed: 0,
     fullId: "TEAM-e106f340-7bab-11e3-bc48-782bcb4ce61a",
     losses: 0,
     teamStatType: "RANKED_TEAM_5x5",
     wins: 0
  } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.average_games_played).to eq 0
    expect(dto.full_id).to eq "TEAM-e106f340-7bab-11e3-bc48-782bcb4ce61a"
    expect(dto.losses).to eq 0
    expect(dto.team_stat_type).to eq "RANKED_TEAM_5x5"
    expect(dto.wins).to eq 0
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.2'
  end

end