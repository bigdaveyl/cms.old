class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]

  validates_presence_of :username
  validates_length_of :username, :within => 3...20
  validates_uniqueness_of :username

  has_many :posts

  has_attached_file :avatar, styles: { thumb: "x100", croppable: "400x400>", big: "1000x1000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
