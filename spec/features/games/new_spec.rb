RSpec.describe 'games' do
   before :each do
     visit new_game_path
     fill_in('game_name', with: 'new title')
   end

   it 'saves a new game' do
     fill_in('game_summary', with: "A new summary longer than 300 characters"*30)
     click_button('Create Game')
     expect(page).to have_content('successfully created')
     expect(current_path).not_to eq(new_game_path)
   end
   it 'will not save an invalid game' do
     click_button('Create Game')
     expect(page).not_to have_content('successfully created')
     expect(current_path).to eq(games_path)
   end
 end
