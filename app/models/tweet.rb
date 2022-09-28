class Tweet < ApplicationRecord

 belongs_to :user
 belongs_to :category
 has_many :likes, dependent: :destroy
 has_many :liked_users, through: :likes, source: :user
 has_many :comments, dependent: :destroy
 mount_uploader :image, ImageUploader

 validates :title, presence: true
 validates :body, presence: true

end