require_relative '../../spec_helper'

describe ::LeagueOfLegends::Request::League::Challenger do

  let(:api) { ::LeagueOfLegends::Api.new TEST_API_KEY }

  def request type
    described_class.new(api, type)
  end

  it "has the required parameters" do
    expect(described_class.dto_class).to eq ::LeagueOfLegends::DTO::League
    expect(described_class.version).to eq 'v2.3'
    expect(request(true).region).to eq 'euw'
    expect(request(true).api_key).to be_an_instance_of String
    expect(request(true).api_key.length).to eq 36
  end

  it "has optional parameters" do
    ['RANKED_SOLO_5x5', 'RANKED_TEAM_3x3', 'RANKED_TEAM_5x5'].each do |type|
      expect(request(type).type).to eq type
    end
  end

  it "can be sent and get a response" do
    VCR.use_cassette('league_challenger type') do
      expect(request('RANKED_TEAM_3x3').response).to be_an_instance_of ::LeagueOfLegends::DTO::League
    end
  end

end