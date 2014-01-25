require 'league_of_legends/request/stats/by_summoner/summary'

describe ::LeagueOfLegends::Request::Stats::BySummoner::Summary do

  let(:request) { described_class.new 50519866 }

  it "has the required parameters" do
    expect(described_class.dto_class).to eq ::LeagueOfLegends::DTO::PlayerStatsSummaryList
    expect(described_class.region).to eq 'euw'
    expect(described_class.version).to eq 'v1.2'
    expect(described_class.api_key).to be_an_instance_of String
    expect(described_class.api_key.length).to eq 36
    
    expect(request.summoner_id).to eq 50519866
  end

  it "can be sent and get a response" do
    pending "needs the attributes to pass first"
    # expect(dto.response).to eq 'something'
  end

end