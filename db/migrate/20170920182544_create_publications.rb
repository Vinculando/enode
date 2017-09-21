class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.string :titulo
      t.text :problema
      t.datetime :limite
      t.text :description
      t.text :premios
      t.references :company, foreign_key: true
      t.references :area, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
