RSpec.describe 'Games' do
   before :each do
     @game = create :game
     visit game_path(@game)
     fill_in('car_make', with: 'car make')
   end

   it 'edits a game' do
     fill_in('car_model', with: 'car model')
     click_button('Create Car')
     expect(current_path).to eq(game_path(@game))
   end
   it 'will not save an edited invalid game' do
     click_button('Create Car')
     expect(page).to have_content('problems')
     expect(current_path).to_not eq(games_path(@post))
   end
 end
