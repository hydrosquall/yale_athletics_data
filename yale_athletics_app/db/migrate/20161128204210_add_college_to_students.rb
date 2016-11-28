class AddCollegeToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :college, :string
  end
end
