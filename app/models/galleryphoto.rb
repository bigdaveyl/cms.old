class Galleryphoto < ActiveRecord::Base
  attr_accessible :gallery_id, :photo_content_type, :photo_description, :photo_file_name, :photo_file_size, :photo_updated_at, :photo
  belongs_to :gallery
  has_attached_file :photo, :styles => { :large => "640x480", :medium => "300x300>", :thumb => "100x100>" }, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  validates_attachment_content_type :photo, content_type: /\Aimage/
  validates_attachment_file_name :photo, matches: [/png\z/, /jpe?g\z/, /JPE?G\z/, /PNG\z/]

  def previous_photo
    Galleryphoto.where('galleryphotos.id < ? AND galleryphotos.gallery_id = ?', self.id, self.gallery_id).last
  end

  def next_photo
    Galleryphoto.where('galleryphotos.id > ? AND galleryphotos.gallery_id = ?', self.id, self.gallery_id).first
  end
end
