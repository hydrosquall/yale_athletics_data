class CreateRostersStudentsThroughs < ActiveRecord::Migration[5.0]
  def change
    create_table :rosters_students_throughs do |t|

      t.timestamps
    end
  end
end
