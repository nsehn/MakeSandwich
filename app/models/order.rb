class Order < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :sandwich
  attr_accessible :special_instructions
  #validates_column :sandwich
  validates_inclusion_of :sandwich, :in => ["meat", "vegetarian", "vegan"]


  # def sandwich
  #   read_attribute(:sandwich).to_sym
  # end
  # def sandwhich= (value)
  #   write_attribute(:sandwich, value.to_s)
  # end

end
