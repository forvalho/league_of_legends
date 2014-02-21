require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::MessageOfDay do

  let(:json) { {
    createDate: 1389546389000,
    message: "MotD",
    version: 123
  } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.create_date).to eq Time.at(1389546389000/1000)
    expect(dto.message).to eq "MotD"
    expect(dto.version).to eq 123
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.2'
  end

end
