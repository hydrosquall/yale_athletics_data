class ChangeRegionHomeTown < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :region_home_town, :hometown
  end
end
