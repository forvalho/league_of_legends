require 'league_of_legends/request/stats/by_summoner/summary'

describe ::LeagueOfLegends::Request::Stats::BySummoner::Summary do

  let(:api) { ::LeagueOfLegends::Api.new 'a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1' }

  let(:request) { described_class.new api, 50519866 }

  it "has the required parameters" do
    expect(described_class.dto_class).to eq ::LeagueOfLegends::DTO::PlayerStatsSummaryList
    expect(described_class.version).to eq 'v1.2'
    expect(request.region).to eq 'euw'
    expect(request.api_key).to be_an_instance_of String
    expect(request.api_key.length).to eq 36
    
    expect(request.summoner_id).to eq 50519866
  end

  it "can be sent and get a response" do
    pending "requires internet connection"
    expect(request.response).to be_an_instance_of ::LeagueOfLegends::DTO::PlayerStatsSummaryList
  end

end