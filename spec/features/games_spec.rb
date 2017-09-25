RSpec.describe 'Games' do
  it 'empty_index_page_works' do
    visit games_path
    expect(page).to have_content("Listing") #check Listing
  end

  it 'index_page_with_one_game_to_work' do
    game = create :game
    visit games_path
    expect(page).to have_link("Show", href: game_path(game))
  end

  it 'shows_the_new_page' do
    visit new_games_path
    expect(page).to have_content('New')
  end

  it 'saves_a_new_game' do
    visit new_game_path
    expect(page).to have_content('New')
    fill_in('game_name', with: 'new game')
    fill_in ('game body', with: 'A new summary no longer than 300 characters')
    click_button('Create Game')
    expect(page).to have_content('successfully created')
    expect(current_path).not_to eq(new_game_path)
  end

  # it 'will_not_save_an_invalid_game' do
  #   visit new_game_path
  #   expect(page).to have_content('New')
  #   fill_in('game_name', with: 'new game')
  #   fill_in ('game body', with: 'This is a new summary no longer than 300 characters')
  #   click_button('Create Game')
  #   expect(page).to have_content('successfully created')
  #   expect(current_path).to eq(game_path)
  # end

end
