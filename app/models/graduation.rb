class Graduation < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true, :length => 3..20
end
