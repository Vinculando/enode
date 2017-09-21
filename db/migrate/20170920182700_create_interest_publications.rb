class CreateInterestPublications < ActiveRecord::Migration[5.0]
  def change
    create_table :interest_publications do |t|
      t.references :publication, foreign_key: true
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end
