RSpec.describe 'Edit cars' do
   before :each do
     @car = create :car
     visit edit_game_car_path(@car.game, @car)
     fill_in('car_make', with: 'car make')
   end

   it 'edits a game' do
     fill_in('car_model', with: 'car model')
     click_button('Update Car')
     expect(current_path).to eq(game_path(@car.game))
   end
   it 'will not save an edited invalid game' do
     fill_in('car_model', with: '')
     click_button('Update Car')
     expect(page).to have_content('problems')
     expect(current_path).to eq(game_car_path(@car.game, @car))
   end
 end
