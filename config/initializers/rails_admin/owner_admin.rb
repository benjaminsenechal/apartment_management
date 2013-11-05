RailsAdmin.config do |config|
  config.model Users::Owner do
    exclude_fields :apartment_id,
                   :current_sign_in_at,
                   :current_sign_in_ip,
                   :encrypted_password,
                   :entry_date,
                   :last_sign_in_at,
                   :last_sign_in_ip,
                   :presence,
                   :release_date,
                   :remember_created_at,
                   :reset_password_sent_at,
                   :reset_password_token,
                   :sign_in_count,
                   :type,
                   :id
  end
end
