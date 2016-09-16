class CreateWebinars < ActiveRecord::Migration[5.0]
  def change
    create_table :webinars do |t|
      t.string :name
      t.string :theme
      t.timestamps
    end
  end
end
