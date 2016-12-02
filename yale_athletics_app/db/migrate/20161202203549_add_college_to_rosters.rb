class AddCollegeToRosters < ActiveRecord::Migration[5.0]
  def change
    add_column :rosters, :college, :string
  end
end
