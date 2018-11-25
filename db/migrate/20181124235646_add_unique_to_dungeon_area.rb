class AddUniqueToDungeonArea < ActiveRecord::Migration[5.2]
  def change
    add_column :dungeon_areas, :unique, :boolean
  end
end
