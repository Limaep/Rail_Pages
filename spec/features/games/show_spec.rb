RSpec.describe 'Games' do
   before :each do
     @car = create :car
     visit game_path(@car.game)
     end

   it 'Find car link on show page' do
     expect(page).to have_link("Show", :href => game_car_path(@car.game, @car))
   end

 end
