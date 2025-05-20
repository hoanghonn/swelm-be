class AddCategoriesToResource < ActiveRecord::Migration[8.0]
  def change
    add_column :resources, :categories, :string, null: true
  end
end
