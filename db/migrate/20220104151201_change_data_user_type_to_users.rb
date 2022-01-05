class ChangeDataUserTypeToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :user_type, :integer
  end
end
