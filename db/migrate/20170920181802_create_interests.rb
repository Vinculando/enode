class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
