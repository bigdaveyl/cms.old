class Gallery < ApplicationRecord
  has_many :galleryphotos
  accepts_nested_attributes_for :galleryphotos, allow_destroy: true    

  validates :title, :presence => true, :length => { :minimum => 2 }
  validates :description, :presence => true, :length => { :minimum => 4}
end
