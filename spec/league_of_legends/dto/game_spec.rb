require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::Game do

  let(:json) { {
    :gameId => 1316392770,
    :invalid => false,
    :gameMode => "CLASSIC",
    :gameType => "MATCHED_GAME",
    :subType => "NORMAL",
    :mapId => 1,
    :teamId => 200,
    :championId => 22,
    :spell1 => 21,
    :spell2 => 6,
    :level => 11,
    :createDate => 1391913992873,
    :fellowPlayers => [
      { :summonerId => 46493314, :teamId => 100, :championId => 7 },
      { :summonerId => 49460388, :teamId => 200, :championId => 222 },
      { :summonerId => 52345403, :teamId => 100, :championId => 34 },
      { :summonerId => 19474335, :teamId => 200, :championId => 37 },
      { :summonerId => 46825692, :teamId => 100, :championId => 222 },
      { :summonerId => 20901501, :teamId => 100, :championId => 26 },
      { :summonerId => 49574516, :teamId => 200, :championId => 1 },
      { :summonerId => 38380347, :teamId => 100, :championId => 77 },
      { :summonerId => 32957220, :teamId => 200, :championId => 77 }
    ],
    :stats => { :level => 12, :goldEarned => 6372, :numDeaths => 6, :minionsKilled => 76, :goldSpent => 5375, :totalDamageDealt => 67406, :totalDamageTaken => 19667, :team => 200, :win => false, :neutralMinionsKilled => 8, :physicalDamageDealtPlayer => 64404, :magicDamageDealtPlayer => 3002, :physicalDamageTaken => 7819, :magicDamageTaken => 11789, :largestCriticalStrike => 327, :timePlayed => 1965, :totalHeal => 720, :totalUnitsHealed => 1, :assists => 1, :item0 => 1055, :item1 => 1051, :item2 => 3072, :item3 => 1001, :item4 => 3093, :item5 => 1042, :item6 => 3350, :magicDamageDealtToChampions => 1575, :physicalDamageDealtToChampions => 10703, :totalDamageDealtToChampions => 12278, :trueDamageTaken => 58, :wardPlaced => 4, :neutralMinionsKilledYourJungle => 8, :totalTimeCrowdControlDealt => 534 }
  } }
  let(:dto) { described_class.new(json) }

  it "has attributes" do
    expect(dto.champion_id).to eq 22
    expect(dto.create_date).to eq Time.at(1391913992873/1000)

    expect(dto.fellow_players).to be_an_instance_of Array
    expect(dto.fellow_players.size).to eq 9
    dto.fellow_players.each do |player|
      expect(player).to be_an_instance_of ::LeagueOfLegends::DTO::Player
    end

    expect(dto.game_id).to eq 1316392770
    expect(dto.game_mode).to eq 'CLASSIC'
    expect(dto.game_type).to eq 'MATCHED_GAME'
    expect(dto.invalid).to be_false
    expect(dto.level).to eq 11
    expect(dto.map_id).to eq 1
    expect(dto.spell_1).to eq 21
    expect(dto.spell_2).to eq 6
    expect(dto.stats).to be_an_instance_of ::LeagueOfLegends::DTO::RawStats
    expect(dto.sub_type).to eq 'NORMAL'
    expect(dto.team_id).to eq 200
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.3'
  end

end