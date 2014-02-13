require_relative '../spec_helper'

describe ::LeagueOfLegends::Request::Champion do

  let(:api) { ::LeagueOfLegends::Api.new 'a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1' }

  def request f2p
    described_class.new(api, f2p)
  end

  it "has the required parameters" do
    expect(described_class.dto_class).to eq ::LeagueOfLegends::DTO::ChampionList
    expect(described_class.version).to eq 'v1.1'
    expect(request(true).region).to eq 'euw'
    expect(request(true).api_key).to be_an_instance_of String
    expect(request(true).api_key.length).to eq 36
  end

  it "has optional parameters" do
    [[true, 'true'], [false, 'false'], ['x', nil]].each do |f2p|
      expect(request(f2p.first).free_to_play).to eq f2p.last
    end
  end

  it "can be sent and get a response" do
    VCR.use_cassette('champion_spec f2p') do
      expect(request(true).response).to be_an_instance_of ::LeagueOfLegends::DTO::ChampionList
    end
  end

end