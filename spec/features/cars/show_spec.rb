RSpec.describe 'Car show page' do
   before :each do
     @car = create :car
     visit game_car_path(@car.game, @car)
     end

   it 'Shows the model on the page' do
     expect(page).to have_content(@car.model)
   end

 end
