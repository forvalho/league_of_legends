require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::ChampionList do

  json = '{"champions": 
  [
    {
      "botMmEnabled": false,
      "defenseRank": 4,
      "attackRank": 8,
      "id": 266,
      "rankedPlayEnabled": true,
      "name": "Aatrox",
      "botEnabled": false,
      "difficultyRank": 6,
      "active": true,
      "freeToPlay": false,
      "magicRank": 3
    },
    {
      "botMmEnabled": false,
      "defenseRank": 4,
      "attackRank": 3,
      "id": 103,
      "rankedPlayEnabled": true,
      "name": "Ahri",
      "botEnabled": false,
      "difficultyRank": 8,
      "active": true,
      "freeToPlay": false,
      "magicRank": 8
    },
    {
      "botMmEnabled": false,
      "defenseRank": 3,
      "attackRank": 5,
      "id": 84,
      "rankedPlayEnabled": true,
      "name": "Akali",
      "botEnabled": false,
      "difficultyRank": 6,
      "active": true,
      "freeToPlay": false,
      "magicRank": 8
    }
  ]}'
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.champions).to be_an_instance_of Array
    expect(dto.champions.size).to eq 3

    dto.champions.each do |champion|
      expect(champion).to be_an_instance_of ::LeagueOfLegends::DTO::Champion
    end
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.1'
  end

end