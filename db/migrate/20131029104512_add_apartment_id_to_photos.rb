class AddApartmentIdToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :apartment, index: true
  end
end
