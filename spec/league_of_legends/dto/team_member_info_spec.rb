require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::TeamMemberInfo do

  let(:json) { {
    joinDate: 1389546389000,
    inviteDate: 1389546389000,
    status: "MEMBER",
    playerId: 31747504
  } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.join_date).to eq Time.at(1389546389000/1000)
    expect(dto.invite_date).to eq Time.at(1389546389000/1000)
    expect(dto.status).to eq "MEMBER"
    expect(dto.player_id).to eq 31747504
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.2'
  end

end