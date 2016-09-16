class AddRateToWebinars < ActiveRecord::Migration[5.0]
  def change
    add_column :webinars, :rate, :integer
  end
end
