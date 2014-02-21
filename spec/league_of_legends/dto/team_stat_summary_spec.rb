require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::TeamStatSummary do

  let(:json) { {
    fullId: "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a",
    teamStatDetails: [
      {
        fullId: "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a",
        losses: 0,
        averageGamesPlayed: 0,
        wins: 0,
        teamStatType: "RANKED_TEAM_5x5"
      },
      {
        fullId: "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a",
        losses: 0,
        averageGamesPlayed: 0,
        wins: 2,
        teamStatType: "RANKED_TEAM_3x3"
      }
    ]
  } }
     let(:dto){ described_class.new(json) }

     it "has attributes" do
      expect(dto.full_id).to eq "TEAM-90e87e50-5131-11e3-ad58-782bcb4ce61a"
      expect(dto.team_stat_details).to be_an_instance_of Array
      expect(dto.team_stat_details.size).to eq 2
      dto.team_stat_details.each do |detail|
        expect(detail).to be_an_instance_of ::LeagueOfLegends::DTO::TeamStatDetail
      end
    end

    it "has a version" do
      expect(described_class.version).to eq 'v2.2'
    end

  end
