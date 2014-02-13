require_relative '../spec_helper'

describe LeagueOfLegends::DTO::PlayerStatsSummary do
  
  let(:attributes) { {
    playerStatSummaryType: 'CoopVsAI',
    wins: 13,
    modifyDate: 1385389596000,
    aggregatedStats:
    {
      totalChampionKills: 72,
      totalMinionKills: 1530,
      totalTurretsKilled: 29,
      totalNeutralMinionsKilled: 339,
      totalAssists: 75
    }
    } }
  let(:dto) { described_class.new(attributes) }

  it "has attributes" do
    expect(dto.player_stat_summary_type).to eq 'CoopVsAI'
    expect(dto.wins).to eq 13
    expect(dto.losses).to eq 0
    expect(dto.modify_date).to eq Time.new(2013,11,25,14,26,36)
    expect(dto.aggregated_stats).to be_an_instance_of ::LeagueOfLegends::DTO::AggregatedStats
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.2'
  end

end