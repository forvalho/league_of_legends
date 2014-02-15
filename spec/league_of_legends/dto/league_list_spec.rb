require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::LeagueList do

  let(:json) { %q(
    [{
       "queue": "RANKED_SOLO_5x5",
       "name": "Ashe's Cavaliers",
       "participantId": "31747504",
       "entries": [
          {
             "isHotStreak": false,
             "isFreshBlood": false,
             "leagueName": "Ashe's Cavaliers",
             "isVeteran": false,
             "tier": "SILVER",
             "lastPlayed": -1,
             "playerOrTeamId": "24765262",
             "leaguePoints": 39,
             "rank": "IV",
             "isInactive": false,
             "queueType": "RANKED_SOLO_5x5",
             "playerOrTeamName": "Destroction",
             "wins": 23
          },
          {
             "isHotStreak": false,
             "isFreshBlood": false,
             "leagueName": "Ashe's Cavaliers",
             "isVeteran": false,
             "tier": "SILVER",
             "lastPlayed": -1,
             "playerOrTeamId": "36517216",
             "leaguePoints": 65,
             "rank": "II",
             "isInactive": false,
             "queueType": "RANKED_SOLO_5x5",
             "playerOrTeamName": "dominikwe100",
             "wins": 38
          },
          {
             "isHotStreak": false,
             "isFreshBlood": false,
             "leagueName": "Ashe's Cavaliers",
             "miniSeries": {
                "progress": "LNNNN",
                "target": 3,
                "losses": 1,
                "timeLeftToPlayMillis": -1,
                "wins": 0
             },
             "isVeteran": false,
             "tier": "SILVER",
             "lastPlayed": -1,
             "playerOrTeamId": "19879643",
             "leaguePoints": 86,
             "rank": "I",
             "isInactive": false,
             "queueType": "RANKED_SOLO_5x5",
             "playerOrTeamName": "Ex3ctum",
             "wins": 42
          }
       ],
       "tier": "SILVER"
    }]
  ) }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.list).to be_an_instance_of Array
    expect(dto.list.count).to eq 1
    dto.list.each do |league|
      expect(league).to be_an_instance_of ::LeagueOfLegends::DTO::League
    end
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.3'
  end

end