class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :instuctions
      t.integer :servings
      t.integer :category

      t.timestamps
    end
  end
end
