class AddUniversityToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :university, foreign_key: true
  end
end
