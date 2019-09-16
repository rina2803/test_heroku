class AddNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :description, :text
    add_column :users, :gender, :string
    add_column :users, :pseudonym, :string
  end
end
