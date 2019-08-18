class CreateDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :descriptions do |t|
      t.references :generator, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
