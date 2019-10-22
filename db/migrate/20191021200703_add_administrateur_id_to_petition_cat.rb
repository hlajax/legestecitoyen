class AddAdministrateurIdToPetitionCat < ActiveRecord::Migration[6.0]
  def change
    add_column :petition_cats, :administrateur_id, :integer
  end
end
