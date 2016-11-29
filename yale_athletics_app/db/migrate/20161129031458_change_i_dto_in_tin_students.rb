class ChangeIDtoInTinStudents < ActiveRecord::Migration[5.0]
  def change
    change_column :students, :student_id, :integer
  end
end
