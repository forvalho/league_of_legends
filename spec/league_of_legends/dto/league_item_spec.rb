require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::LeagueItem do

  let(:json) { {
    isHotStreak: false,
    isFreshBlood: true,
    leagueName: "Miss Fortune\'s Weaponmasters",
    isVeteran: false,
    tier: "CHALLENGER",
    lastPlayed: -1,
    playerOrTeamId: "19331582",
    leaguePoints: 248,
    rank: "I",
    isInactive: false,
    queueType: "RANKED_SOLO_5x5",
    playerOrTeamName: "Gripex",
     wins: 85
  } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.is_hot_streak).to be_false
    expect(dto.is_fresh_blood).to be_true
    expect(dto.league_name).to eq "Miss Fortune\'s Weaponmasters"
    expect(dto.is_veteran).to be_false
    expect(dto.tier).to eq "CHALLENGER"
    expect(dto.last_played).to eq -1
    expect(dto.player_or_team_id).to eq "19331582"
    expect(dto.league_points).to eq 248
    expect(dto.rank).to eq "I"
    expect(dto.is_inactive).to be_false
    expect(dto.queue_type).to eq "RANKED_SOLO_5x5"
    expect(dto.player_or_team_name).to eq "Gripex"
    expect(dto.wins).to eq 85
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.3'
  end

end