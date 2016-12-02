class DelteThroughTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :through_tables
    add_column :rosters_students_throughs, :student_id, :string
    add_column :rosters_students_throughs, :roster_id, :string
  end
end
