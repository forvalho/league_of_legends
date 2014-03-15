require_relative '../../../spec_helper'

describe ::LeagueOfLegends::Request::League::BySummoner::Entry do

  let(:api) { ::LeagueOfLegends::Api.new TEST_API_KEY }

  let(:request) { described_class.new api, 31747504 }

  it "has the required parameters" do
    expect(described_class.dto_class).to eq ::LeagueOfLegends::DTO::LeagueItemList
    expect(described_class.version).to eq 'v2.3'
    expect(request.region).to eq 'euw'
    expect(request.api_key).to be_an_instance_of String
    expect(request.api_key.length).to eq 36

    expect(request.summoner_id).to eq 31747504
  end

  it "can be sent and get a response" do
    VCR.use_cassette('league by_summoner entry') do
      expect(request.response).to be_an_instance_of ::LeagueOfLegends::DTO::LeagueItemList
    end
  end

end