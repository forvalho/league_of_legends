require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::LeagueItemList do

  let(:json) { '[
      {
         "isHotStreak": false,
         "isFreshBlood": true,
         "leagueName": "Miss Fortune\'s Weaponmasters",
         "isVeteran": false,
         "tier": "CHALLENGER",
         "lastPlayed": -1,
         "playerOrTeamId": "19331582",
         "leaguePoints": 248,
         "rank": "I",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "Gripex",
         "wins": 85
      },
      {
         "isHotStreak": false,
         "isFreshBlood": true,
         "leagueName": "Miss Fortune\'s Weaponmasters",
         "isVeteran": false,
         "tier": "CHALLENGER",
         "lastPlayed": -1,
         "playerOrTeamId": "22432605",
         "leaguePoints": 79,
         "rank": "I",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "Wygon",
         "wins": 141
      }
  ]' }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.list).to be_an_instance_of Array
    expect(dto.list.count).to eq 2
    dto.list.each do |item|
      expect(item).to be_an_instance_of ::LeagueOfLegends::DTO::LeagueItem
    end
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.3'
  end

end