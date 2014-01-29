require 'league_of_legends/api'

describe ::LeagueOfLegends::Api do

  let(:api) { ::LeagueOfLegends::Api.new '0c78469b-b773-4b35-9f6a-00d7fe964290
' }

  it "has access to an API key" do
    pending ""
    expect(api.key).to eq 'a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1'
  end

  it "has a base url" do
    expect(api.base_url).to eq 'https://prod.api.pvp.net/api/lol'
  end

  it "can get a list of available requests" do
    expect(api.available_requests).to be_kind_of Enumerable
  end

  it "can send requests and receive a response" do
    pending "requires internet connection"
    expect(api.get(:summoner_stats_summary, 12345)).to be_an_instance_of ::LeagueOfLegends::DTO::PlayerStatsSummaryList
    expect(api.get(:champions, true)).to be_an_instance_of ::LeagueOfLegends::DTO::ChampionList
  end

end