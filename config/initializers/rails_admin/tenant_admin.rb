RailsAdmin.config do |config|
  config.model Users::Tenant do
    exclude_fields :encrypted_password,
                   :reset_password_token,
                   :reset_password_sent_at,
                   :remember_created_at,
                   :sign_in_count,
                   :current_sign_in_at,
                   :last_sign_in_at,
                   :current_sign_in_ip,
                   :last_sign_in_ip,
                   :type
  end
end
