require 'league_of_legends/dto/player_stats_summary_list'
require 'league_of_legends/dto/player_stats_summary_list'

describe ::LeagueOfLegends::DTO::PlayerStatsSummaryList do

  json = '{
    "summonerId":50519866,
    "playerStatSummaries":
    [
      {
        "playerStatSummaryType":"CoopVsAI",
        "wins":13,
        "modifyDate":1385389596000,
        "aggregatedStats":
        {
          "totalChampionKills":72,
          "totalMinionKills":1530,
          "totalTurretsKilled":29,
          "totalNeutralMinionsKilled":339,
          "totalAssists":75
        }
      },
      {
        "playerStatSummaryType":"OdinUnranked",
        "wins":0,
        "modifyDate":1388758443000,
        "aggregatedStats":
        {
        }
      },
      {
        "playerStatSummaryType":"Unranked",
        "wins":6,
        "modifyDate":1389882950000,
        "aggregatedStats":
        {
          "totalChampionKills":121,
          "totalMinionKills":758,
          "totalTurretsKilled":11,
          "totalNeutralMinionsKilled":182,
          "totalAssists":62
        }
      },
      {
        "playerStatSummaryType":"Unranked3x3",
        "wins":0,
        "modifyDate":1388758443000,
        "aggregatedStats":
        {
        }
      }
    ]
  }'
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.summoner_id).to eq 50519866
    expect(dto.player_stat_summaries.is_a? Array).to eq true
  
    dto.player_stat_summaries.each do |pss|
      expect(pss.is_a? ::LeagueOfLegends::DTO::PlayerStatsSummary).to eq true
    end
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.2'
  end
  
end
