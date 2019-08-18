class AddNotesToDungeonArea < ActiveRecord::Migration[5.2]
  def change
    add_column :dungeon_areas, :notes, :text
  end
end
