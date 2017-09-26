require 'rails_helper'

RSpec.describe Car, type: :model do
  it "create game when create cars" do
    car = create(:car)
    expect(car.game).not_to be nil
  end

  it "doesn't create car without model" do
    car = build(:car , {make: ""})
    expect(car.save).to be false
  end
end
