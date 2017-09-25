RSpec.describe 'Games' do
   it 'checks the empty index page works' do
     visit games_path
     expect(page).to have_content('Listing') #the word listing to appear
   end
   it 'checks the index page with one game works' do
     game = create :game
     visit games_path
     expect(page).to have_link('Show', href: game_path(game)) #the link show to appear
   end
   it 'shows the new page' do
     visit new_game_path
     expect(page).to have_content('new')
   end
 end
