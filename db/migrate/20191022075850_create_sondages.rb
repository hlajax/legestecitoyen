class CreateSondages < ActiveRecord::Migration[6.0]
  def change
    create_table :sondages do |t|
      t.string :titre
      t.text :description
      t.string :slug
      t.string :image
      t.references :administrateur, null: false, foreign_key: true

      t.timestamps
    end
    add_index :sondages, :slug, unique: true
  end
end
