require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::TeamMap do

  let(:json) {
    %q({"TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a": {
      "teamStatSummary": {
        "fullId": "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a",
        "teamStatDetails": [
           {
              "fullId": "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a",
              "losses": 0,
              "averageGamesPlayed": 0,
              "wins": 0,
              "teamStatType": "RANKED_TEAM_5x5"
           }
        ]
      },
      "status": "RANKED",
      "tag": "MMosh",
      "roster": {
        "ownerId": 24907958,
        "memberList": [
           {
              "joinDate": 1384875907000,
              "inviteDate": 1384875907000,
              "status": "MEMBER",
              "playerId": 24907958
           }
        ]
      },
      "lastGameDate": 1392668305000,
      "modifyDate": 1392668305000,
      "fullId": "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a",
      "lastJoinDate": 1388178602000,
      "secondLastJoinDate": 1384955161000,
      "matchHistory": [
        {
           "gameMode": "CLASSIC",
           "mapId": 10,
           "assists": 7,
           "opposingTeamName": "Infected Dream",
           "invalid": false,
           "deaths": 10,
           "gameId": 1331312632,
           "kills": 5,
           "win": false,
           "date": 1392668306007,
           "opposingTeamKills": 10
        }
      ],
      "lastJoinedRankedTeamQueueDate": 1392666922000,
      "name": "Metal Moshpit",
      "thirdLastJoinDate": 1384899325000,
      "createDate": 1384875907000
    }})
  }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    dto.get.each_pair do |team_id, team_dto|
      expect(team_id).to eq "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a"
      expect(team_dto).to be_an_instance_of ::LeagueOfLegends::DTO::Team
    end
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.2'
  end

end
