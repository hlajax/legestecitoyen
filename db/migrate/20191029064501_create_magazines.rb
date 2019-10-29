class CreateMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :magazines do |t|
      t.string :titre
      t.text :description
      t.string :cover
      t.string :lien
      t.references :administrateur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
