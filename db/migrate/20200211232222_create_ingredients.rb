class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :type
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
