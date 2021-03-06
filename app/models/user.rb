class User < ActiveRecord::Base
  has_many :documents

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  validates :firstname,
            presence: true

  validates :lastname,
            presence: true

  validates :number_street,
            presence: true

  validates :street,
            presence: true

  validates :town,
            presence: true

  def to_s
    "#{lastname} #{firstname}"
  end
end
