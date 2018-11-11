class CreateGenerators < ActiveRecord::Migration[5.2]
  def change
    create_table :generators do |t|
      t.string :name
      t.string :contents
      t.string :type

      t.timestamps
    end
  end
end
