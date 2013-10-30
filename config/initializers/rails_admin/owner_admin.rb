RailsAdmin.config do |config|
  config.model Users::Owner do
    exclude_fields :id,
                   :presence,
                   :release_date,
                   :entry_date,
                   :encrypted_password,
                   :reset_password_token,
                   :reset_password_sent_at,
                   :remember_created_at,
                   :sign_in_count,
                   :current_sign_in_at,
                   :last_sign_in_at,
                   :current_sign_in_ip,
                   :last_sign_in_ip,
                   :type,
                   :apartment_id
  end
end
