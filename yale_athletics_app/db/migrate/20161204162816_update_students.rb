class UpdateStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :startseason, :integer
    add_column :students, :endseason, :integer
    add_column :students, :major, :string
    remove_column :students, 'active seasons'.to_sym, :string
    remove_column :students, :city, :string
    remove_column :students, :region, :string
  end
end
