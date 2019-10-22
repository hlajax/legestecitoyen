class CreatePetitions < ActiveRecord::Migration[6.0]
  def change
    create_table :petitions do |t|
      t.string :titre
      t.text :contenu
      t.string :image
      t.references :petition_cat, null: false, foreign_key: true
      t.references :citoyen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
