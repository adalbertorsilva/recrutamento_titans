class RemoveColumnWheight < ActiveRecord::Migration
  def change
    remove_column :people, :wheight
  end
end
