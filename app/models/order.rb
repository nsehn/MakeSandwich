class Order < ActiveRecord::Base
  attr_accessible :name
  #validates_column :sandwich
  #validates_inclusion_of :sandwich, :in => ["meat", "vegetarian", "vegan"]


  # def sandwich
  #   read_attribute(:sandwhich).to_sym
  # end
  # def sandwhich= (value)
  #   write_attribute(:sandwhich, value.to_s)
  # end

end
