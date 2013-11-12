module Users
  class Tenant < User
    belongs_to :apartment

    validates :apartment_id,
              presence: true

    validates :entry_date,
              presence: true
  end
end
