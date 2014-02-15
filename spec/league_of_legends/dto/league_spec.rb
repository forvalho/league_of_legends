require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::League do

  let(:json) { '{
   "queue": "RANKED_SOLO_5x5",
   "name": "Miss Fortune\'s Weaponmasters",
   "entries": [
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
      },
      {
         "isHotStreak": false,
         "isFreshBlood": false,
         "leagueName": "Miss Fortune\'s Weaponmasters",
         "isVeteran": false,
         "tier": "CHALLENGER",
         "lastPlayed": -1,
         "playerOrTeamId": "20313290",
         "leaguePoints": 306,
         "rank": "I",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "SK Zvanillan",
         "wins": 66
      },
      {
         "isHotStreak": false,
         "isFreshBlood": false,
         "leagueName": "Miss Fortune\'s Weaponmasters",
         "isVeteran": true,
         "tier": "CHALLENGER",
         "lastPlayed": -1,
         "playerOrTeamId": "39600294",
         "leaguePoints": 664,
         "rank": "I",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "Krebsen",
         "wins": 107
      },
      {
         "isHotStreak": false,
         "isFreshBlood": false,
         "leagueName": "Miss Fortune\'s Weaponmasters",
         "isVeteran": false,
         "tier": "CHALLENGER",
         "lastPlayed": -1,
         "playerOrTeamId": "20482323",
         "leaguePoints": 274,
         "rank": "I",
         "isInactive": false,
         "queueType": "RANKED_SOLO_5x5",
         "playerOrTeamName": "Esito",
         "wins": 121
      }
   ],
   "tier": "CHALLENGER"
}' }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.queue).to eq "RANKED_SOLO_5x5"
    expect(dto.name).to eq "Miss Fortune\'s Weaponmasters"
    expect(dto.entries).to be_an_instance_of Array
    expect(dto.entries.count).to eq 5
    dto.entries.each do |entry|
      expect(entry).to be_an_instance_of ::LeagueOfLegends::DTO::LeagueItem
    end
    expect(dto.tier).to eq "CHALLENGER"
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.3'
  end

end