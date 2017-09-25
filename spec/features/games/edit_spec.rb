RSpec.describe 'Posts' do
   before :each do
     @post = create :post
     visit edit_post_path(@post)
     fill_in('post_title', with: 'new title')
   end

   it 'edits a post' do
     fill_in('post_body', with: "A new description longer than 10 characters")
     click_button('Update Post')
     expect(current_path).to eq(post_path(@post))
   end
   it 'will not save an edited invalid post' do
     fill_in('post_body', with: 'invalid')
     click_button('Update Post')
     expect(page).to have_content('is too short')
     expect(current_path).to_not eq(posts_path(@post))
   end
 end
