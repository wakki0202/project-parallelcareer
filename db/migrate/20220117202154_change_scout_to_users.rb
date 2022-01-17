class ChangeScoutToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :scout, :boolean
  end
end
