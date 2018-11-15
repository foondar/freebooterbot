class CreateJoinTableCategoryTableGenerator < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :table_generators do |t|
      # t.index [:category_id, :table_generator_id]
      # t.index [:table_generator_id, :category_id]
    end
  end
end
