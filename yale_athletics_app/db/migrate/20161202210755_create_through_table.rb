class CreateThroughTable < ActiveRecord::Migration[5.0]
  def change
    create_table :through_tables do |t|
      t.string :roster_id
      t.string :student_id
    end
  end
end
