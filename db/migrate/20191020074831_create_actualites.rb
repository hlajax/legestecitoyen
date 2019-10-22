class CreateActualites < ActiveRecord::Migration[6.0]
  def change
    create_table :actualites do |t|
      t.string :titre
      t.text :contenu
      t.string :image
      t.string :category_id
      t.references :administrateur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
