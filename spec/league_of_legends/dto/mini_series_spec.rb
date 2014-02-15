require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::MiniSeries do

  let(:json) { { #made up
      losses: 123,
      progress: [],
      target: 123,
      timeLeftToPlayMillis: 123123,
      wins: 123
    } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.losses).to eq 123
    expect(dto.progress).to be_an_instance_of Array
    expect(dto.target).to eq 123
    expect(dto.time_left_to_play_millis).to eq 123123
    expect(dto.wins).to eq 123
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.3'
  end

end