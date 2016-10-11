class LinkThemeWithWebinar < ActiveRecord::Migration[5.0]
  def change
    remove_column :webinars, :theme, :string
    add_reference :webinars, :theme, index: true
  end
end
