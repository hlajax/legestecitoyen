class CreateCorruptionCats < ActiveRecord::Migration[6.0]
  def change
    create_table :corruption_cats do |t|
      t.string :titre
      t.text :description
      t.string :slug
      t.references :administrateur, null: false, foreign_key: true

      t.timestamps
    end
    add_index :corruption_cats, :slug, unique: true
  end
end
