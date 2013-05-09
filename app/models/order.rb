class Order < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :sandwich
  attr_accessible :special_instructions
  #validates_column :sandwich
  validates_inclusion_of :sandwich, :in => ["Meat", "Vegetarian", "Vegan"]

end
