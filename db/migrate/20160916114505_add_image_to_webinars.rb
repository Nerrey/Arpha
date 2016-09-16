class AddImageToWebinars < ActiveRecord::Migration[5.0]
  def change
    add_column :webinars, :image, :string
  end
end
