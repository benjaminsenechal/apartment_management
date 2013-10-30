class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :presence, :boolean
    add_column :users, :number_street, :integer
    add_column :users, :street, :string
    add_column :users, :town, :string
    add_column :users, :entry_date, :datetime
    add_column :users, :release_date, :datetime
    add_column :users, :town, :string
  end
end
