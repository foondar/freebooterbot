class ChangeSizeToIntegerInDungeon < ActiveRecord::Migration[5.2]
  def change
    change_column :dungeons, :size, :integer
  end
end
