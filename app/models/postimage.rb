class Postimage < ActiveRecord::Base
  attr_accessible :image_content_type, :image_file_name, :image_file_size, :image_updated_at, :post_id, :image
  belongs_to :post
  has_attached_file :image, :styles => { :large => "640x480", :medium => "300x300>", :thumb => "100x100>" }
end
