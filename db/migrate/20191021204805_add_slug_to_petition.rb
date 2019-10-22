class AddSlugToPetition < ActiveRecord::Migration[6.0]
  def change
    add_column :petitions, :slug, :string
    add_index :petitions, :slug, unique: true
  end
end
