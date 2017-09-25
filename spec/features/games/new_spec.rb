RSpec.describe 'Posts' do
   before :each do
     visit new_post_path
     fill_in('post_title', with: 'new title')
   end

   it 'saves a new post' do
     fill_in('post_body', with: "A new description longer than 10 characters")
     click_button('Create Post')
     expect(page).to have_content('successfully created')
     expect(current_path).not_to eq(new_post_path)
   end
   it 'will not save an invalid post' do
     click_button('Create Post')
     expect(page).not_to have_content('successfully created')
     expect(current_path).to eq(posts_path)
   end
 end
