require_relative '../spec_helper'

describe ::LeagueOfLegends::DTO::Roster do

  let(:json) { {
    ownerId: 31747504,
    memberList: [
      {
        joinDate: 1389546389000,
        inviteDate: 1389546389000,
        status: "MEMBER",
        playerId: 31747504
      },
      {
        joinDate: 1389546412000,
        inviteDate: 1389546405000,
        status: "MEMBER",
        playerId: 46278132
      },
      {
        joinDate: 1389637384000,
        inviteDate: 1389546413000,
        status: "MEMBER",
        playerId: 45297413
      },
      {
        joinDate: 1389546460000,
        inviteDate: 1389546429000,
        status: "MEMBER",
        playerId: 45097419
      },
      {
        joinDate: 1389728184000,
        inviteDate: 1389728157000,
        status: "MEMBER",
        playerId: 31350004
      },
      {
        joinDate: 1390087488000,
        inviteDate: 1390087483000,
        status: "MEMBER",
        playerId: 31809264
      }
    ]
  } }
  let(:dto){ described_class.new(json) }

  it "has attributes" do
    expect(dto.owner_id).to eq 31747504
    expect(dto.member_list).to be_an_instance_of Array
    expect(dto.member_list.size).to eq 6
    dto.member_list.each do |member|
      expect(member).to be_an_instance_of ::LeagueOfLegends::DTO::TeamMemberInfo
    end
  end

  it "has a version" do
    expect(described_class.version).to eq 'v2.2'
  end

end
