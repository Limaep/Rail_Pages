RSpec.describe Game do
  it "does not save without name" do
    expect(build(:game, name: "").save).to be false
  end
  it "does not save without summary" do
    expect(build(:game, summary: "").save).to be false
  end
  it "it save with attributes" do
    expect(build(:game).save).to be true
  end
  it "it creates a game" do
    expect(create(:game)).to be_persisted
  end
end
