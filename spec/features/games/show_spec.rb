RSpec.describe 'Games' do
   before :each do
     @game = create :game
     visit game_path(@game)
     end

   it 'shows a game' do
     expect(current_path).to eq(game_path(@game))
   end

 end
