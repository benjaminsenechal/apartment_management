class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :content
      t.text :description
      t.boolean :important

      t.timestamps
    end
  end
end
