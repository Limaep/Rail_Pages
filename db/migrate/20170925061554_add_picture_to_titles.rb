class AddPictureToTitles < ActiveRecord::Migration[5.1]
  def change
    add_column :titles, :picture, :string
  end
end
