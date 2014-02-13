require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::ChampionStats do

  let(:json) { {
    :id => 59,
    :name => "JarvanIV",
    :stats => {
      :totalSessionsPlayed => 2,
      :totalSessionsLost => 1,
      :totalSessionsWon => 1,
      :totalChampionKills => 8,
      :totalDamageDealt => 256026,
      :totalDamageTaken => 62473,
      :mostChampionKillsPerSession => 4,
      :totalMinionKills => 112,
      :totalDoubleKills => 0,
      :totalTripleKills => 0,
      :totalQuadraKills => 0,
      :totalPentaKills => 0,
      :totalUnrealKills => 0,
      :totalDeathsPerSession => 9,
      :totalGoldEarned => 25091,
      :mostSpellsCast => 0,
      :totalTurretsKilled => 4,
      :totalPhysicalDamageDealt => 211641,
      :totalMagicDamageDealt => 24715,
      :totalFirstBlood => 0,
      :totalAssists => 39,
      :maxChampionsKilled => 4,
      :maxNumDeaths => 6
    }
  } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.id).to eq 59
    expect(dto.name).to eq 'JarvanIV'
    expect(dto.stats).to be_an_instance_of ::LeagueOfLegends::DTO::AggregatedStats
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.2'
  end

end