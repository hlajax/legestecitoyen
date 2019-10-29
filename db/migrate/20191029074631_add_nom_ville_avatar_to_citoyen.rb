class AddNomVilleAvatarToCitoyen < ActiveRecord::Migration[6.0]
  def change
    add_column :citoyens, :nom, :string
    add_column :citoyens, :ville, :string
    add_column :citoyens, :avatar, :string
  end
end
