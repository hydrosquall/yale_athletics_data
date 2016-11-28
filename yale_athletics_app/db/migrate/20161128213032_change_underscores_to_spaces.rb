class ChangeUnderscoresToSpaces < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :'high_school', :'high school'
    rename_column :students, :'active_seasons', :'active seasons'
  end
end
