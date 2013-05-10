class AddSandwichAndSpecialInstructionsToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :sandwich, "ENUM('Meat', 'Vegetarian', 'Vegan')"
  	add_column :orders, :special_instructions, :text
  end
end
