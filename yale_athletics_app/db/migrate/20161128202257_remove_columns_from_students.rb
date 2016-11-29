class RemoveColumnsFromStudents < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :bt, :string
    remove_column :students, :college_year, :string
    remove_column :students, :events, :string
    remove_column :students, :high_school_home_town, :string
    remove_column :students, :name_link, :string
    remove_column :students, :sport, :string
    remove_column :students, :weapon, :string
  end
end
