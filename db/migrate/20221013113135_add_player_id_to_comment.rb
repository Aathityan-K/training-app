class AddPlayerIdToComment < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :player_id, :integer
  end
end
