require 'league_of_legends/api'

describe ::LeagueOfLegends::Api do

  it "has an API key" do
    expect(described_class.key).to be_an_instance_of String
    expect(described_class.key.length).to eq 36
  end

  it "has a base url" do
    expect(described_class.base_url).to eq 'https://prod.api.pvp.net/api/lol'
  end

end