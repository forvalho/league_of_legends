require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::AggregatedStats do

  let(:attributes) do
    {
      totalChampionKills: 72,
      totalMinionKills: 1530,
      totalTurretsKilled: 29,
      totalNeutralMinionsKilled: 339,
      totalAssists: 75,
      totalSessionsPlayed: 2,
      totalSessionsLost: 1,
      totalSessionsWon: 1,
      totalDamageDealt: 256026,
      totalDamageTaken: 62473,
      mostChampionKillsPerSession: 4,
      totalDoubleKills: 0,
      totalTripleKills: 0,
      totalQuadraKills: 0,
      totalPentaKills: 0,
      totalUnrealKills: 0,
      totalDeathsPerSession: 9,
      totalGoldEarned: 25091,
      mostSpellsCast: 0,
      totalPhysicalDamageDealt: 211641,
      totalMagicDamageDealt: 24715,
      totalFirstBlood: 0,
      maxChampionsKilled: 4,
      maxNumDeaths: 6
    }
  end
  let(:dto) { described_class.new(attributes) }

  it "has attributes" do
    expect(dto.total_champion_kills).to eq 72
    expect(dto.total_minion_kills).to eq 1530
    expect(dto.total_turrets_killed).to eq 29
    expect(dto.total_neutral_minions_killed).to eq 339
    expect(dto.total_assists).to eq 75

    expect(dto.total_sessions_played).to eq 2
    expect(dto.total_sessions_lost).to eq 1
    expect(dto.total_sessions_won).to eq 1
    expect(dto.total_damage_dealt).to eq 256_026
    expect(dto.total_damage_taken).to eq 62_473
    expect(dto.most_champion_kills_per_session).to eq 4
    expect(dto.total_double_kills).to eq 0
    expect(dto.total_triple_kills).to eq 0
    expect(dto.total_quadra_kills).to eq 0
    expect(dto.total_penta_kills).to eq 0
    expect(dto.total_unreal_kills).to eq 0
    expect(dto.total_deaths_per_session).to eq 9
    expect(dto.total_gold_earned).to eq 25_091
    expect(dto.most_spells_cast).to eq 0
    expect(dto.total_physical_damage_dealt).to eq 211_641
    expect(dto.total_magic_damage_dealt).to eq 24_715
    expect(dto.total_first_blood).to eq 0
    expect(dto.max_champions_killed).to eq 4
    expect(dto.max_num_deaths).to eq 6
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.2'
  end

end
