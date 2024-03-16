class AddNotNulls < ActiveRecord::Migration[7.1]
  def change
    change_column_null :authors, :name, false
    change_column_null :books, :title, false
    change_column_null :editors, :name, false
    change_column_null :publishers, :name, false
    change_column_null :series, :name, false
  end
end
