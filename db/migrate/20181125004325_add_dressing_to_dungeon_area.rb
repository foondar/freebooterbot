class AddDressingToDungeonArea < ActiveRecord::Migration[5.2]
  def change
    add_column :dungeon_areas, :dressing, :string
  end
end
