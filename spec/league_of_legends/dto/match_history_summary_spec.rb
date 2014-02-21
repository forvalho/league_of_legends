require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::MatchHistorySummary do

  let(:json) { {
    gameMode: "CLASSIC",
    mapId: 10,
    assists: 15,
    opposingTeamName: "We Are Kput",
    invalid: false,
    deaths: 6,
    gameId: 1325039575,
    kills: 13,
    win: true,
    date: 1392398336953,
    opposingTeamKills: 6
  } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.game_mode).to eq "CLASSIC"
    expect(dto.map_id).to eq 10
    expect(dto.assists).to eq 15
    expect(dto.opposing_team_name).to eq "We Are Kput"
    expect(dto.invalid).to be_false
    expect(dto.deaths).to eq 6
    expect(dto.game_id).to eq 1325039575
    expect(dto.kills).to eq 13
    expect(dto.win).to be_true
    expect(dto.date).to eq Time.at(1392398336953/1000)
    expect(dto.opposing_team_kills).to eq 6
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.2'
  end

end
