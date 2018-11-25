class CreateDungeonTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :dungeon_types do |t|
      t.string :name
      t.string :background
      t.string :detail
      t.text :backgrounds
      t.text :details
      t.text :connections
      t.text :common_areas
      t.text :unique_areas
      t.text :features
      t.text :finds
      t.text :dressings

      t.timestamps
    end
    add_index :dungeon_types, :name, unique: true
  end
end
