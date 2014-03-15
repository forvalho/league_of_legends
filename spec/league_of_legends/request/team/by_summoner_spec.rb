require_relative '../../spec_helper'

describe ::LeagueOfLegends::Request::Team::BySummoner do

  let(:api) { ::LeagueOfLegends::Api.new TEST_API_KEY }

  def request summoner_id
    described_class.new(api, summoner_id)
  end

  it "has the required parameters" do
    expect(described_class.dto_class).to eq ::LeagueOfLegends::DTO::TeamList
    expect(described_class.version).to eq 'v2.2'
    expect(request(true).region).to eq 'euw'
    expect(request(true).api_key).to be_an_instance_of String
    expect(request(true).api_key.length).to eq 36
  end

  it "can be sent and get a response"# do
  #   VCR.use_cassette('champion_spec f2p') do
  #     expect(request(true).response).to be_an_instance_of ::LeagueOfLegends::DTO::ChampionList
  #   end
  # end

end
