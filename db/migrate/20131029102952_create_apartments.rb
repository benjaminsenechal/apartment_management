class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :title
      t.text :description
      t.string :town
      t.string :street
      t.integer :number_street
      t.integer :surface
      t.integer :price

      t.timestamps
    end
  end
end
