class AddHighSchoolIDtoHighSchools < ActiveRecord::Migration[5.0]
  def change
    add_column :high_schools, :high_School_id, :string
  end
end
