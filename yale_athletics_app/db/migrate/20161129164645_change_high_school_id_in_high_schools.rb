class ChangeHighSchoolIdInHighSchools < ActiveRecord::Migration[5.0]
  def change
    rename_column :high_schools, :high_School_id, :high_school_id
  end
end
