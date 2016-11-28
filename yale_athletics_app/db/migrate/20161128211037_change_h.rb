class ChangeH < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :'.ht', :'ht.'
    rename_column :students, :'.wt', :'wt.'
  end
end
