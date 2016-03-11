class Person < ActiveRecord::Base
  validates :name, :age, :height, :weight, :phone_number, :email, :photo, :rg, :cpf, :birth_date, presence: true
  validates :cpf, uniqueness: true
end
