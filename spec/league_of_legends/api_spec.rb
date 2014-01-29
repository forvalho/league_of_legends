require 'setup_vcr'
require 'league_of_legends/api'

describe ::LeagueOfLegends::Api do

  let(:api) { ::LeagueOfLegends::Api.new 'a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1' }

  it "has access to an API key" do
    expect(api.key).to be_an_instance_of String
    expect(api.key.length).to eq 36
  end

  it "has a base url" do
    expect(api.base_url).to eq 'https://prod.api.pvp.net/api/lol'
  end

  it "can get a list of available requests" do
    expect(api.available_requests).to be_kind_of Enumerable
  end

  it "can send requests and receive a response" do
    VCR.use_cassette('api_spec summoner_stats_summary') do
      expect(api.get(:summoner_stats_summary, 50519866)).to be_an_instance_of ::LeagueOfLegends::DTO::PlayerStatsSummaryList
    end
    VCR.use_cassette('api_spec champions') do
      expect(api.get(:champions, true)).to be_an_instance_of ::LeagueOfLegends::DTO::ChampionList
    end
  end

end