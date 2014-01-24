require 'league_of_legends/dto/aggregated_stats'

describe ::LeagueOfLegends::DTO::AggregatedStats do

  let(:attributes) { {
    totalChampionKills: 72,
    totalMinionKills: 1530,
    totalTurretsKilled: 29,
    totalNeutralMinionsKilled: 339,
    totalAssists: 75
  } }
  let(:dto) { described_class.new(attributes) }

  it "has attributes" do
    expect(dto.total_champion_kills).to eq 72
    expect(dto.total_minion_kills).to eq 1530
    expect(dto.total_turrets_killed).to eq 29
    expect(dto.total_neutral_minions_killed).to eq 339
    expect(dto.total_assists).to eq 75
  end
  
end