class CreateCorruptions < ActiveRecord::Migration[6.0]
  def change
    create_table :corruptions do |t|
      t.string :titre
      t.text :description
      t.string :image
      t.string :ville
      t.string :date
      t.string :slug
      t.references :corruption_cat, null: false, foreign_key: true
      t.references :citoyen, null: false, foreign_key: true

      t.timestamps
    end
    add_index :corruptions, :slug, unique: true
  end
end
