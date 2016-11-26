class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :bt
      t.string :city
      t.string :college_year
      t.string :events
      t.string :high_school
      t.string :high_school_home_town
      t.string :region_home_town
      t.string :height
      t.string :name
      t.string :name_link
      t.string :number
      t.string :pos
      t.string :region
      t.string :season
      t.string :sport
      t.string :weapon
      t.string :wt

      t.timestamps
    end
  end
end
