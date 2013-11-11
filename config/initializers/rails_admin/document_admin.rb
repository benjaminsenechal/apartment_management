RailsAdmin.config do |config|
  config.model Document do
    list do
      exclude_fields_if do
        type == :tenant
      end

      exclude_fields :name
    end
  end
end
