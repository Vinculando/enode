class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :postulation, foreign_key: true
      t.string :nombre
      t.text :mensaje

      t.timestamps
    end
  end
end
