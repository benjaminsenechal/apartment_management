class Apartment < ActiveRecord::Base
  has_many :photo
  has_one :user

    validates :description,
              presence: true

    validates :number_street,
              presence: true

    validates :price,
              presence: true

    validates :surface,
              presence: true

    validates :street,
              presence: true

    validates :title,
              presence: true

    validates :town,
              presence: true
end
