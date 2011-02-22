class Student < ActiveRecord::Base
  belongs_to :graduation
  
  validates_presence_of :graduation
  validates_associated :graduation
  
end
