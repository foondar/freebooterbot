class CreateTableGenerators < ActiveRecord::Migration[5.2]
  def change
    create_table :table_generators do |t|
      t.string :name
      t.text :contents

      t.timestamps
    end
  end
end
