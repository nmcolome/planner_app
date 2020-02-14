class CreateAmount < ActiveRecord::Migration[5.1]
  def change
    create_table :amounts do |t|
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.float :amount
      t.integer :unit
      t.string :comment
      t.boolean :optional, default: false

      t.timestamps
    end
  end
end
