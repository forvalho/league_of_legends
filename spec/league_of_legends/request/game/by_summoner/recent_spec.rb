require_relative '../../../spec_helper'

describe ::LeagueOfLegends::Request::Game::BySummoner::Recent do

  let(:api) { ::LeagueOfLegends::Api.new 'a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1' }

  let(:request) { described_class.new api, 50519866 }

  it "has the required parameters" do
    expect(described_class.dto_class).to eq ::LeagueOfLegends::DTO::RecentGames
    expect(described_class.version).to eq 'v1.3'
    expect(request.region).to eq 'euw'
    expect(request.api_key).to be_an_instance_of String
    expect(request.api_key.length).to eq 36
    
    expect(request.summoner_id).to eq 50519866
  end

  it "can be sent and get a response" do
    VCR.use_cassette('game_spec') do
      expect(request.response).to be_an_instance_of ::LeagueOfLegends::DTO::RecentGames
    end
  end

end