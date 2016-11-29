class ChangeHt < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :ht, :'.ht'
    rename_column :students, :wt, :'.wt'
    rename_column :students, :number, :'no.'
  end
end
