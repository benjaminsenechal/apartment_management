class Document < ActiveRecord::Base
  belongs_to :user

  mount_uploader :content, DocumentsUploader

  validates :content,
            presence: true

  validates :title,
            presence: true

  validates :user_id,
            presence: true
end
