class CreatePgnCategories < ActiveRecord::Migration
  def change
    create_table :pgn_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
