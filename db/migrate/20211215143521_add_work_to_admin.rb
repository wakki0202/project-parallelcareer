class AddWorkToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_reference :admins, :work, foreign_key: true
  end
end
