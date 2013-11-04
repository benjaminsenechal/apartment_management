RailsAdmin.config do |config|
  config.model User do
    exclude_fields :current_sign_in_at,
                   :current_sign_in_ip,
                   :encrypted_password,
                   :last_sign_in_at,
                   :last_sign_in_ip,
                   :remember_created_at,
                   :reset_password_sent_at,
                   :reset_password_token,
                   :sign_in_count
  end
end
