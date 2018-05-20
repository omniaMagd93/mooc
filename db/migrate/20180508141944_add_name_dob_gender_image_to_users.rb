class AddNameDobGenderImageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :gender, :boolean , default: false
    add_column :users, :image, :string
  end
end
