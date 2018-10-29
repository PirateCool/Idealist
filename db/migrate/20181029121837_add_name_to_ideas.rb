class AddNameToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :name, :string
  end
end
