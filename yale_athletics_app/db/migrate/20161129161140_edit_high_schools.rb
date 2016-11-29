class EditHighSchools < ActiveRecord::Migration[5.0]
  def change
    remove_column :high_schools, :name, :string
    remove_column :high_schools, :city, :string
    add_column :high_schools, :'high school', :string
  end
end
