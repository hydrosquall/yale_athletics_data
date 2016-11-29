class RemoveCollegeAndNameFromRosters2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :rosters, :name, :string
    remove_column :rosters, :college, :string
  end
end
