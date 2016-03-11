class AddColumnWeight < ActiveRecord::Migration
  def change
    add_column :people, :weight, :decimal
  end
end
