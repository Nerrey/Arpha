class AddDelRateToWebinars < ActiveRecord::Migration[5.0]
  def change
    remove_column :webinars, :rate, :integer
  end
end
