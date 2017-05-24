class AddScheduledToToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :scheduled_to, :datetime
  end
end
