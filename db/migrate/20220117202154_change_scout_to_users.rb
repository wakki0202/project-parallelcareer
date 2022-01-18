class ChangeScoutToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :scout, 'boolean USING CAST(users AS boolean)'
  end
end
