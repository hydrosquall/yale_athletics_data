class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :pos, :position
    rename_column :students, :height, :ht
    rename_column :students, :season, :active_seasons
  end
end
