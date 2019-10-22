class CreatePetitionCats < ActiveRecord::Migration[6.0]
  def change
    create_table :petition_cats do |t|
      t.string :titre
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :petition_cats, :slug, unique: true
  end
end
