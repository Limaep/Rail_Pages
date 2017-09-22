require 'test_helper'

class GameTest < ActiveSupport::TestCase
  test "no save without name" do
    assert_equal false, build(:game, name: "").save
  end
  test "no save without summary" do
    assert !build(:game, summary: "").save
  end
  test "save with attributes" do
    assert build(:game).save
  end
  test "creation" do
    assert create(:game).persisted?
  end
end
