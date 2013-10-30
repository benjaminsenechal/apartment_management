class Photo < ActiveRecord::Base
  belongs_to :apartment

  mount_uploader :photo_path, PhotosUploader

  validates :photo_path,
             presence: :true

  validates :title,
             presence: :true
end
