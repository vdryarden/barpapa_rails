class Paragraph < ActiveRecord::Base
  validates_uniqueness_of :daf_id, scope: :order
  
  has_many :pirushes
  
  def has_title?
    not self.title.empty?
  end
end
