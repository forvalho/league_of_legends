require 'league_of_legends/dto/champion'

describe ::LeagueOfLegends::DTO::Champion do

  let(:attributes) { {
      botMmEnabled: false,
      defenseRank: 4,
      attackRank: 3,
      id: 103,
      rankedPlayEnabled: true,
      name: "Ahri",
      botEnabled: false,
      difficultyRank: 8,
      active: true,
      freeToPlay: false,
      magicRank: 8
  } }
  let(:dto) { described_class.new(attributes) }

  it "has attributes" do
    expect(dto.bot_mm_enabled).to be_false
    expect(dto.defense_rank).to eq 4
    expect(dto.attack_rank).to eq 3
    expect(dto.id).to eq 103
    expect(dto.ranked_play_enabled).to be_true
    expect(dto.name).to eq "Ahri"
    expect(dto.bot_enabled).to be_false
    expect(dto.difficulty_rank).to eq 8
    expect(dto.active).to be_true
    expect(dto.free_to_play).to be_false
    expect(dto.magic_rank).to eq 8
  end

  it "has a version" do
    expect(described_class.version).to eq 'v1.1'
  end

end