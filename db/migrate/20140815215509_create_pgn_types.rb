class CreatePgnTypes < ActiveRecord::Migration
  def change
    create_table :pgn_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
