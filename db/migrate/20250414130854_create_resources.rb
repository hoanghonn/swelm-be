class CreateResources < ActiveRecord::Migration[8.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
