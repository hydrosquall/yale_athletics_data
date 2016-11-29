class AddColumnsToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :bio, :string
    add_column :students, :misc, :string
  end
end
