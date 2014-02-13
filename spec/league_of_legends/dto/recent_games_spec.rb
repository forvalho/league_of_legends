require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::RecentGames do

  let(:json) { '' }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    pending "need JSON result"
    expect(dto.games).to be_an_instance_of Array
    expect(dto.games.size).to eq 3

    dto.games.each do |game|
      expect(game).to be_an_instance_of ::LeagueOfLegends::DTO::Game
    end
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.3'
  end

end