class AddPlayersToRosters < ActiveRecord::Migration[5.0]
  def change
    add_column :rosters, :players, :string
  end
end
