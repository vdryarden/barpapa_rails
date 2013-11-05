class Masecet < ActiveRecord::Base
  validates_uniqueness_of :name
  
  has_many :dafs
end
