class LinkUserToWebinars < ActiveRecord::Migration[5.0]
  def change
    add_reference :webinars, :user, index: true
  end
end
