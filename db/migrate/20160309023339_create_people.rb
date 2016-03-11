class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|

      t.string :name
      t.integer :age
      t.decimal :height
      t.decimal :wheight
      t.integer :phone_number
      t.string :email
      t.string :photo

      t.timestamps null: false
    end
  end
end
