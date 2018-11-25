class AddColumnsToDungeon < ActiveRecord::Migration[5.2]
  def change
    add_column :dungeons, :situation, :string
    add_column :dungeons, :entrance_condition, :string
    add_column :dungeons, :ruin, :string
  end
end
