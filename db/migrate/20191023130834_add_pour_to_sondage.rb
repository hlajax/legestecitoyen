class AddPourToSondage < ActiveRecord::Migration[6.0]
  def change
    add_column :sondages, :pour, :string
  end
end
