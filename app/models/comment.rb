class Comment < ActiveRecord::Base
  include Rakismet::Model

  validates :name, :presence => true, :length => { :minimum => 2 }
  validates :body, :presence => true, :length => { :minimum => 3 }

  belongs_to :post

  #attr_accessor :name, :body, :name_url, :name_email, :user_ip, :user_agent, :referrer, :permalink
  rakismet_attrs :author => :name, :content => :body, :author_email => :name_email, :author_url => :name_url, :comment_type => "comment"
end
