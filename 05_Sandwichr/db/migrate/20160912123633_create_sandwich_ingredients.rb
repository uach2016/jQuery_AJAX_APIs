class CreateSandwichIngredients < ActiveRecord::Migration
  def change
    create_table :sandwich_ingredients do |t|
      t.references :sandwich
      t.references :ingredient

      t.timestamps null: false
    end
  end
end
