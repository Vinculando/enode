class AddCityToCompany < ActiveRecord::Migration[5.0]
  def change
    add_reference :companies, :city, foreign_key: true
  end
end
