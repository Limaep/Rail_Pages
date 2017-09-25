RSpec.describe 'Games' do
   before :each do
     @game = create :game
     visit edit_game_path(@game)
     fill_in('game_name', with: 'new_title')
   end

   it 'edits a game' do
     fill_in('game_summary', with: "A new summary longer than 300 characters"*30)
     click_button('Update Game')
     expect(current_path).to eq(game_path(@game))
   end
   it 'will not save an edited invalid game' do
     fill_in('game_summary', with: 'invalid')
     click_button('Update Game')
     expect(page).to have_content('is too short')
     expect(current_path).to_not eq(games_path(@post))
   end
 end
