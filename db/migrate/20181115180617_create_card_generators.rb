class CreateCardGenerators < ActiveRecord::Migration[5.2]
  def change
    create_table :card_generators do |t|
      t.string :name
      t.text :contents

      t.timestamps
    end
  end
end
