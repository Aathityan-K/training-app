class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :Name
      t.string :Role

      t.timestamps
    end
  end
end
