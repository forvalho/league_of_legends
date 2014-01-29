require 'league_of_legends/request/mapper'

describe ::LeagueOfLegends::Request::Mapper do

  it "knows the class for certain requests" do
    req = described_class.get :summoner_stats_summary
    expect(req).to eq ::LeagueOfLegends::Request::Stats::BySummoner::Summary
    req = described_class.get :champions
    expect(req).to eq ::LeagueOfLegends::Request::Champion
  end

end