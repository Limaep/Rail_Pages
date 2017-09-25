RSpec.describe 'Posts' do
   it 'checks the empty index page works' do
     visit posts_path
     expect(page).to have_content('Listing') #the word listing to appear
   end
   it 'checks the index page with one post works' do
     post = create :post
     visit posts_path
     expect(page).to have_link('Show', href: post_path(post)) #the link show to appear
   end
   it 'shows the new page' do
     visit new_post_path
     expect(page).to have_content('New')
   end
 end
