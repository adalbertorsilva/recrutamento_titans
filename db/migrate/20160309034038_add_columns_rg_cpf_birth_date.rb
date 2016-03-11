class AddColumnsRgCpfBirthDate < ActiveRecord::Migration
  def change
    add_column :people, :rg, :integer
    add_column :people, :cpf, :integer
    add_column :people, :birth_date, :date
  end
end
