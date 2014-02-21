require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::Team do

  let(:json) { {
      teamStatSummary: {
         fullId: "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a",
         teamStatDetails: [
            {
               fullId: "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a",
               losses: 0,
               averageGamesPlayed: 0,
               wins: 2,
               teamStatType: "RANKED_TEAM_3x3"
            }
         ]
      },
      status: "RANKED",
      tag: "MMosh",
      roster: {
         ownerId: 24907958,
         memberList: [
            {
               joinDate: 1388178602000,
               inviteDate: 1388178598000,
               status: "MEMBER",
               playerId: 19496585
            }
         ]
      },
      lastGameDate: 1392398336000,
      modifyDate: 1392398336000,
      fullId: "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a",
      lastJoinDate: 1388178602000,
      secondLastJoinDate: 1384955161000,
      matchHistory: [
         {
            gameMode: "CLASSIC",
            mapId: 10,
            assists: 24,
            opposingTeamName: "NEO ESPAÑOLITOS",
            invalid: false,
            deaths: 10,
            gameId: 1177371227,
            kills: 21,
            win: true,
            date: 1384960069483,
            opposingTeamKills: 10
         }
      ],
      lastJoinedRankedTeamQueueDate: 1392396869000,
      name: "Metal Moshpit",
      thirdLastJoinDate: 1384899325000,
      createDate: 1384875907000
   } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.team_stat_summary).to be_an_instance_of ::LeagueOfLegends::DTO::TeamStatSummary
    expect(dto.status).to eq "RANKED"
    expect(dto.tag).to eq "MMosh"
    expect(dto.roster).to be_an_instance_of ::LeagueOfLegends::DTO::Roster
    expect(dto.last_game_date).to eq Time.at(1392398336)
    expect(dto.modify_date).to eq Time.at(1392398336)
    expect(dto.full_id).to eq "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a"
    expect(dto.last_join_date).to eq Time.at(1388178602)
    expect(dto.second_last_join_date).to eq Time.at(1384955161)
    expect(dto.match_history).to be_an_instance_of Array
    expect(dto.match_history.size).to eq 1
    dto.match_history.each do |match|
      expect(match).to be_an_instance_of ::LeagueOfLegends::DTO::MatchHistorySummary
    end
    expect(dto.last_joined_ranked_team_queue_date).to eq Time.at(1392396869)
    expect(dto.name).to eq "Metal Moshpit"
    expect(dto.third_last_join_date).to eq Time.at(1384899325)
    expect(dto.create_date).to eq Time.at(1384875907)

  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.2'
  end

end
