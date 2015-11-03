class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :title, :link
  end
end
