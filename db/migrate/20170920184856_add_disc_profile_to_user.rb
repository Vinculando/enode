class AddDiscProfileToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :disc_profile, foreign_key: true
  end
end
