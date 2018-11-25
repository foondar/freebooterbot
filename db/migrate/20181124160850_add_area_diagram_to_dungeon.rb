class AddAreaDiagramToDungeon < ActiveRecord::Migration[5.2]
  def change
    add_column :dungeons, :area_diagram, :text
  end
end
