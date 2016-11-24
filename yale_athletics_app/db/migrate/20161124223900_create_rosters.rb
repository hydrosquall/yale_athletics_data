class CreateRosters < ActiveRecord::Migration[5.0]
  def change
    create_table :rosters do |t|
      t.string :sport
      t.string :season
      t.string :name
      t.string :college

      t.timestamps
    end
  end
end
