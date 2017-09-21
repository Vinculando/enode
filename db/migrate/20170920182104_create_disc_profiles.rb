class CreateDiscProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :disc_profiles do |t|
      t.integer :decision
      t.integer :interaccion
      t.integer :serenidad
      t.integer :cumplimiento

      t.timestamps
    end
  end
end
