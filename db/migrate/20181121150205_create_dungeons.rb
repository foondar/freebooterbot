class CreateDungeons < ActiveRecord::Migration[5.2]
  def change
    create_table :dungeons do |t|
      t.string :name
      t.string :size
      t.string :themes
      t.string :overview
      t.references :dungeon_type, foreign_key: true
      t.string :background
      t.string :detail

      t.timestamps
    end
    add_index :dungeons, :name, unique: true
  end
end
