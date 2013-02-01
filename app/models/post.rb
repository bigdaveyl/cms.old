class Post < ActiveRecord::Base

  attr_accessible :title, :body, :postimages_attributes
  validates :title, :presence => true, :length => { :minimum => 2 }
  validates :body, :presence => true, :length => { :minimum => 4}
  has_many :comments, :dependent => :destroy
  belongs_to :user

  has_many :postimages
  accepts_nested_attributes_for :postimages, :allow_destroy => true    
end
