class Daf < ActiveRecord::Base
  validates_uniqueness_of :daf_num, scope: :masecet_id
  
  belongs_to :masecet
  has_many :paragraphs
end
