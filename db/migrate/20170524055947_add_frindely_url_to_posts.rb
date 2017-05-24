class AddFrindelyUrlToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :friendlyUrl, :string
  end
end
