class AddSlugToActualite < ActiveRecord::Migration[6.0]
  def change
    add_column :actualites, :slug, :string
    add_index :actualites, :slug, unique: true
  end
end
