class AddPhotoToWebinars < ActiveRecord::Migration[5.0]
  def change
    remove_column :webinars, :image, :string
    add_attachment :webinars, :photo
  end
end
