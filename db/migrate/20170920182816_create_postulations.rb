class CreatePostulations < ActiveRecord::Migration[5.0]
  def change
    create_table :postulations do |t|
      t.references :user, foreign_key: true
      t.references :publication, foreign_key: true
      t.text :contenido

      t.timestamps
    end
  end
end
