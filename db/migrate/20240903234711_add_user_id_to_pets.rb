class AddUserIdToPets < ActiveRecord::Migration[7.2]
  def change
    add_column :pets, :user_id, :integer
  end
end
