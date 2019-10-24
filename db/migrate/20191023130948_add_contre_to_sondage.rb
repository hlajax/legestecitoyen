class AddContreToSondage < ActiveRecord::Migration[6.0]
  def change
    add_column :sondages, :contre, :string
  end
end
