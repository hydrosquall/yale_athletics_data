class ChangeStudentIDtoStringinStudents < ActiveRecord::Migration[5.0]
  def change
    change_column :students, :student_id, :string
  end
end
