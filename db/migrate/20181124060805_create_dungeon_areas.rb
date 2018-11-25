class CreateDungeonAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :dungeon_areas do |t|
      t.string :description
      t.text :discoveries
      t.text :dangers
      t.references :dungeon, foreign_key: true

      t.timestamps
    end
  end
end
